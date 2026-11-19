terraform {
    required_version = "~> 1.17.2" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.73.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Rameshinfra" {
	ami = "ami-06f98347e4f9c7328" 
	instance_type = "t3.micro"
}
