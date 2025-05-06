provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "k8s_master_jenkins_slave" {
  ami           = "ami-0f9de6e2d2f067fca"
  instance_type = "t2.medium"
  key_name      = "NV-Keypair"
  tags = {
    Name = "K8S-Master/Jenkins-Slave"
  }
}

resource "aws_instance" "k8s_slave1" {
  ami           = "ami-0f9de6e2d2f067fca"
  instance_type = "t2.medium"
  key_name      = "NV-Keypair"
  tags = {
    Name = "K8S-Slave1"
  }
}

resource "aws_instance" "k8s_slave2" {
  ami           = "ami-0f9de6e2d2f067fca"
  instance_type = "t2.medium"
  key_name      = "NV-Keypair"
  tags = {
    Name = "K8S-Slave2"
  }
}