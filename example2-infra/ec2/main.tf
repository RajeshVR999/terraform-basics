# Creating Ec2 Instance
resource "aws_instance" "app" {
  ami                    = "ami-0d159bae10a240227"
  instance_type          = "t3.micro"
  vpc_security_group_ids = var.sg
  tags = {
    Name = "CAE-CERT-AWS_EC2"
  }
}



variable "sg" {
  description = "Security group ID for the EC2 instance"
  type        = string
}

output "public_ip" {
  value = aws_instance.app.public_ip
  }
