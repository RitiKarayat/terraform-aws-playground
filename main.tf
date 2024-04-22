terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
      }
    }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_vpc" "tf-vpc" {
    cidr_block = "10.10.10.0/24"
    instance_tenancy = "default"
    tags = {
      "terraform" = "true"
      "Name" = "tf-vpc"
    }
  
}