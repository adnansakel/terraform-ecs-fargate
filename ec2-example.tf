provider "aws" {
  region  = "eu-central-1"
  version = "~> 2.32"
}

terraform {
  backend "remote" {
    organization = "test-sakel"

    workspaces {
      name = "terraform-example"
    }
  }
}


resource "aws_instance" "example" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
}
