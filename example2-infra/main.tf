module "ec2" {
   source = "./ec2"
}

module "s3" {
  source = "./s3"
}

# Taking the output to this root module from the sg sub-module

output "name" {
  
}