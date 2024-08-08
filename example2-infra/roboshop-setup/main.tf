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
    COMPONET = "frontend"
}

module "mongodb" {
    source = "./ec2"
    COMPONET = "mongodb"
}

module "catalogue" {
    source = "./ec2"
    COMPONET = "catalogue"
}

module "redis" {
    source = "./ec2"
    COMPONET = "redis"
}

module "user" {
    source = "./ec2"
    COMPONET = "user"
}

module "cart" {
    source = "./ec2"
    COMPONET = "cart"
}

module "mysql" {
    source = "./ec2"
    COMPONET = "mysql"
}

module "shipping" {
    source = "./ec2"
    COMPONET = "shipping"
}

module "rabnitmq" {
    source = "./ec2"
    COMPONET = "rabbitmq"
}

module "payment" {
    source = "./ec2"
    COMPONET = "payment"
}

module "dispatch" {
    source = "./ec2"
    COMPONET = "dispatch"
}







