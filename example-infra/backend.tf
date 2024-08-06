terraform {
  backend "s3" {
    bucket = "s3://krishya-tf-statefile"
    key = "tf-statefile"
    region = "ap-southeast-1"
  }
}