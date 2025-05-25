provider "aws" {
  region = var.region
}

resource "aws_instance" "ubuntu" {
  ami           = "ami-026c39f4021df9abe"
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}
