provider "aws" {
  region = "ap-southeast-1"
}

module "ec2" {
   source = "./ec2"
}

module "s3" {
  source = "./s3"
}

# Taking the output to this root module from the sg sub-module

output "public_ip" {
  value = aws_instance.app.public_ip
  }