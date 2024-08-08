terraform {
  backend "s3" {
    bucket = "krishya-tf-statefile"  # Ensure this bucket name is valid and exists
    key    = "example1/terraform.tfstate"
    region = "ap-southeast-1"  # Specify the correct region for your S3 bucket
  }
}