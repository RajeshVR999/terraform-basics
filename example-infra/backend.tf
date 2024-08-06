terraform {
  backend "s3" {
    bucket = "krishya-tf-statefile"  # Ensure this bucket name is valid and exists
    key    = "tf.tfstate"
    region = "ap-southeast-1"  # Specify the correct region for your S3 bucket
  }
}


# terraform {
#   backend "s3" {
#     bucket = "s3://krishya-tf-statefile"
#     key = "tf-statefile"
#     region = "ap-southeast-1"
#   }
# }
