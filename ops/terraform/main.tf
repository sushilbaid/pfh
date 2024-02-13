terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_key_pair" "deployer" {
  key_name = "deployer-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEtY9r1pAANzZ7Z6g5aZZq+v+VPQYlkVeajHMAEAON46 sushilbaid@gmail.com"
}

resource "aws_instance" "app_server" {
  ami           = "ami-008fe2fc65df48dac"
  instance_type = "t2.micro"
  key_name = aws_key_pair.deployer.key_name
  tags = {
    Name = local.instance_name
  }
}
