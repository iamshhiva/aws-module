resource "aws_key_pair" "deployer" {
  key_name   = "key-key"
  public_key = file("C:/Users/shiva ubale/OneDrive/Desktop/terraform multi-env/terra-key1.pub")
}

resource "aws_default_vpc" "defaults" {
  
}

#Security Group
resource "aws_security_group" "securities" {
  name        = "allow_ssh"
  description = "Allow SSH access"

  ingress {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_instance" "my_instance" {
  ami           = var.ami_id #ubuntu id
  instance_type = "t3.micro"
  key_name = aws_key_pair.deployer.key_name
  security_groups = [aws_security_group.securities.name]

  tags = {
    Name = "my_instance"
  }
}
