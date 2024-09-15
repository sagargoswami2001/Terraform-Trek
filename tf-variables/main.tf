terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.66.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

locals {
  owner = "ABC"
  name  = "MySERVER"
}

resource "aws_instance" "myserver" {
  ami           = "ami-0182f373e66f89c85"
  instance_type = var.aws_instance_type

  root_block_device {
    delete_on_termination = true
    volume_size           = var.root_volume_size.v_size
    volume_type           = var.root_volume_size.v_type
  }

  tags = merge(var.additional_tags, {
    Name = local.name
  })
}
