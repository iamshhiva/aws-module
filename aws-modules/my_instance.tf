resource "aws_instance" "my_instance" {
  count = var.instance_count
  ami           = var.ami_id #ubuntu id
  instance_type = var.instance_type #t2.micro
  tags = {
    Name = "${var.my_env}-harsha-bucket-25122025" #name
  }
}