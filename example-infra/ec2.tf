resource "aws_instance" "ec2-web" {
  ami = "ami-0d159bae10a240227"
  instance_type = "t3.micro"
  
  tags = {
    Name = "CAE-CERT-AWS_EC2"
  }
}

output "private_dns" {
  value = aws_instance.ec2-web.private_dns
}