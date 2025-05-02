provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "demo" {
  ami           = "ami-037774efca2da0726"
  instance_type = "t2.micro"
  key_name      = "OhioSept"
  tags          = {
    Name = "MyAssignment1"
  }
}