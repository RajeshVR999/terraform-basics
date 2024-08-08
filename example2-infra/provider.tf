provider "aws" {
  region = "ap-southeast-1"
}

# [default]
# aws_access_key_id = YOUR_ACCESS_KEY_ID
# aws_secret_access_key = YOUR_SECRET_ACCESS_KEY

//or

# export AWS_ACCESS_KEY_ID=YOUR_ACCESS_KEY_ID
# export AWS_SECRET_ACCESS_KEY=YOUR_SECRET_ACCESS_KEY



# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "5.61.0"
#     }
#   }
# }

# provider "aws" {
#   # Configuration options
# }