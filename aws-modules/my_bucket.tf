resource "aws_s3_bucket" "my-bucket" {
  bucket = "${var.my_env}-harsha-bucket-25122025-table"

  tags = {
    Name        = "My bucket"
    Environment = var.my_env
  }
}