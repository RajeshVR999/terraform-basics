# Creating Ec2 Instance
resource "aws_instance" "app" {
  ami                    = "ami-0d159bae10a240227"
  instance_type          = "t3.micro"
  #vpc_security_group_ids = ["var.sg"]
  tags = {
    Name = "CAE-CERT-AWS_EC2"
  }
}

# Show private ip outputs on the sscreen 
output "private_dns" {
  value = aws_instance.app.private_ip
}

#variable "sg" {}

output "public_ip" {
  value = module.ec2.public_ip
  }
