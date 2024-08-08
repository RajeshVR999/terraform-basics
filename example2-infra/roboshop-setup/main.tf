provider "aws" {
  region = "ap-southeast-1"
} 

terraform {
  backend "s3" {
    bucket = "krishya-tf-statefile"  # Ensure this bucket name is valid and exists
    key    = "example2/terraform.tfstate"
    region = "ap-southeast-1"  # Specify the correct region for your S3 bucket
  }
}

module "frontend" {
    source = "./ec2"
    COMPONENT = "frontend"
}

module "mongodb" {
    source = "./ec2"
    COMPONENT = "mongodb"
}

module "catalogue" {
    source = "./ec2"
    COMPONENT = "catalogue"
}

module "redis" {
    source = "./ec2"
    COMPONENT = "redis"
}

module "user" {
    source = "./ec2"
    COMPONENT = "user"
}

module "cart" {
    source = "./ec2"
    COMPONENT = "cart"
}

module "mysql" {
    source = "./ec2"
    COMPONENT = "mysql"
}

module "shipping" {
    source = "./ec2"
    COMPONENT = "shipping"
}

module "rabnitmq" {
    source = "./ec2"
    COMPONENT = "rabbitmq"
}

module "payment" {
    source = "./ec2"
    COMPONENT = "payment"
}

module "dispatch" {
    source = "./ec2"
    COMPONENT = "dispatch"
}







