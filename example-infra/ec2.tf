resource "aws_instance" "ec2-web" {
  ami = "ami-0d159bae10a240227"
  instance_type = "t2.micro"
  
  tags = {
    Name = "Hello World"
  }
}

output "private_dns" {
  value = aws_instance.ec2-web.private_dns
}