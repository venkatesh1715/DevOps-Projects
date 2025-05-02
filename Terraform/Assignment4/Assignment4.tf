provider "aws" {      
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.region
}

resource "aws_vpc" "assignment-4-vpc" {
  cidr_block = "10.0.0.0/16"
  tags       = {
    Name       = "my-vpc"
  }
}
resource "aws_subnet" "assignment-4-subnet" {
  vpc_id            = aws_vpc.assignment-4-vpc.id
  cidr_block        = "10.0.0.0/23"
  availability_zone = "us-east-2a"
  tags              = {
    Name            = "my-subnet"
  }
}

resource "aws_instance" "label-1" {
  subnet_id     = aws_subnet.assignment-4-subnet.id
  ami           = "ami-037774efca2da0726"
  instance_type = "t2.micro"
  key_name      = "OhioSept"
  tags          = {
    Name        = "Hello-Ohio-my-VPC"
  }
}
