provider "aws" {
  region     = var.region
}

resource "aws_instance" "demo2" {
  ami           = "ami-037774efca2da0726"
  instance_type = "t2.micro"
  key_name      = "OhioSept"
  tags          = {
    Name        = "MyAssignment2"
  }
}

resource "aws_eip" "eip" {
  vpc           = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.demo2.id
  allocation_id = aws_eip.eip.id
}

