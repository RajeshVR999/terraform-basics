# Creating Ec2 Instance
resource "aws_instance" "app" {
  ami                    = data.aws_ami.myami.image_id
  instance_type          = "t3.micro"
  vpc_security_group_ids = [var.sg]
  tags = {
    Name = "CAE-CERT-AWS_EC2"
  }
}

//aws_ami" "myami

variable "sg" {}

output "public_ip" {
  value = aws_instance.app.public_ip
}
