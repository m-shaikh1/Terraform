variable "AmazonImage_id" {

  type        = string
  default     = "ami-0cff7528ff583bf9a"
  description = "This is the image id of Amazon Linux 2"
}

variable "instance_type" {

  type        = string
  default     = "t2.micro"
  description = "This is the type of the ec2 instance"
}
