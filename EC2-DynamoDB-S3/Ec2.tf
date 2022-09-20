resource "aws_instance" "Test" {
  ami           = var.AmazonImage_id #Amazon
  instance_type = var.instance_type
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.SecurityGroup.id]
  depends_on = [aws_security_group.SecurityGroup]
  user_data = file("install.sh")
    tags = {  
        Name = "shaikh-tf"
    }

}
resource "aws_security_group" "SecurityGroup" {
  ingress {
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["185.20.75.91/32"]
  }
  egress {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
  }
}