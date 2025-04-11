provider "aws" {
  region = var.region
}

# VPC
resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = { Name = "main-vpc" }
}

# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags = { Name = "main-igw" }
}

# Subnets
resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = { Name = "subnet-1" }
}

resource "aws_subnet" "subnet2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  tags = { Name = "subnet-2" }
}

# Route Table
resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = { Name = "main-route-table" }
}

# Route table association
resource "aws_route_table_association" "rta1" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.rt.id
}

resource "aws_route_table_association" "rta2" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.rt.id
}

# Security Group
resource "aws_security_group" "web_sg" {
  name        = "web-sg"
  description = "Allow HTTP and SSH"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = { Name = "web-sg" }
}

# Network Interfaces
resource "aws_network_interface" "ni1" {
  subnet_id       = aws_subnet.subnet1.id
  security_groups = [aws_security_group.web_sg.id]
  tags = { Name = "ni-subnet1" }
}

resource "aws_network_interface" "ni2" {
  subnet_id       = aws_subnet.subnet2.id
  security_groups = [aws_security_group.web_sg.id]
  tags = { Name = "ni-subnet2" }
}

# EC2 Instances
resource "aws_instance" "web1" {
  ami                    = var.ami
  instance_type          = var.instance_type
  availability_zone      = "us-east-1a"
  key_name               = var.key_name
  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.ni1.id
  }
  user_data              = file("${path.module}/userdata.sh")
  tags = { Name = "web-server-1" }
}

resource "aws_instance" "web2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  availability_zone      = "us-east-1b"
  key_name               = var.key_name
  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.ni2.id
  }
  user_data              = file("${path.module}/userdata.sh")
  tags = { Name = "web-server-2" }
}
