# Creating Ec2 Instance
resource "aws_instance" "app" {
  ami                    = "ami-0d159bae10a240227"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  
  tags = {
    Name = "CAE-CERT-AWS_EC2"
  }
}
# Show private ip outputs on the sscreen 
output "private_dns" {
  value = aws_instance.app.private_ip
}

# Show puclic ip outputs on the sscreen 
output "Public" {
  value = aws_instance.app.public_ip
}

# Creating secuirty group 

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow TLS inbound traffic"

  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
      description      = "Allow HTTP From Public"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
    }

    ingress {
      description      = "Allow HTTPS From Public"
      from_port        = 443
      to_port          = 443
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
    }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_SSH"
  }
}

