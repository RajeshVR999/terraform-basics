module "ec2" {
   source = "./ec2"
   sg     = module.sg.sgid
}

module "sg" {
  source = "./sg"
}

# Taking the output to this root module from the sg sub-module

output "ec2" {
  value = module.ec2.public_ip
}