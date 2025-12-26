resource "aws_s3_bucket" "my-bucket" {
  bucket = "harsha-bucket-25122025"

  tags = {
    Name        = "My bucket"
  }
}