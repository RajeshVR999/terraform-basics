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


