terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.23.0"
    }
  }

  backend "s3" {
    bucket = "tenzo-terraform-state-bucket"
    key    = "terraform.tfstate"
    region = "ap-south-2"
  }
}

provider "aws" {
  region = "ap-south-2"
}


resource "aws_vpc" "terraform-vpc" {
  cidr_block = "10.0.1.0/24"
}
