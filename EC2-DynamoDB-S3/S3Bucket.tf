resource "aws_s3_bucket" "Shaikh-tf-S3Bucket" {
  bucket = "shaikh-tf-s3-bucket"

  tags = {
    Name  = "shaikh-tf-s3-bucket"
  }
}