terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.64.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "myec2" {
  ami = "ami-0e86e20dae9224db8"
  instance_type = "t2.micro"

  tags = {
    Name = "SampleServer"
  }
}
