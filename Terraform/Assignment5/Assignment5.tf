provider "aws" {      
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.region
}


resource "aws_instance" "Assignment5" {
  ami           = "ami-037774efca2da0726"
  instance_type = "t2.micro"
  key_name      = "OhioSept"
  user_data     = "${file("install.sh")}"
  tags          = {
    Name        = "assignment-5"
  }
}

output "IPv4" {
  value         = aws_instance.Assignment5.public_ip
}
