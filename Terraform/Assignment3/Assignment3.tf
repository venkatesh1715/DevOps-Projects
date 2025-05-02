provider "aws" {
  alias      = "ohio"
  region     = var.region1
}

provider "aws" {
  alias      = "NorthVirginia"
  region     = var.region2
}

resource "aws_instance" "demo3" {
  provider      = aws.ohio
  ami           = "ami-037774efca2da0726"
  instance_type = "t2.micro"
  key_name      = "OhioSept"
  tags          = {
    Name        = "Hello-Ohio"
  }
}

resource "aws_instance" "demo3" {
  provider      = aws.NorthVirginia
  ami           = "ami-0ebfd941bbafe70c6"
  instance_type = "t2.micro"
  key_name      = "NVKPPpem"
  tags          = {
    Name        = "Hello-NorthVirginia"
  }
}