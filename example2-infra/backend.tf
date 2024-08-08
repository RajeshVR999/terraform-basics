terraform {
  backend "s3" {
    bucket = "krishya-tf-statefile"  # Ensure this bucket name is valid and exists
    key    = "example1/terraform.tfstate"
    region = "ap-southeast-1"  # Specify the correct region for your S3 bucket
  }
}

provider "aws" {
  region = "ap-southeast-1"
}


# terraform {
#   backend "s3" {
#     bucket = "s3://krishya-tf-statefile"
#     key = "tf-statefile"
#     region = "ap-southeast-1"
#   }
# }

//https://krishya-tf-statefile.s3.ap-southeast-1.amazonaws.com/sample/