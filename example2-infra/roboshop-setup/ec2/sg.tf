# Creating secuirty group 
resource "aws_security_group" "allows_ssh" {
  name        = "allows_ssh_${var.COMPONENT}"
  description = "Allow SSH inbound traffic"

  ingress {
    description = "SSH from VPC"
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
    
     ingress {
      description      = "APP From Public"
      from_port        = 8080
      to_port          = 8080
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
    }

  egress {
    from_port     = 0
    to_port       = 0
    protocol      = "-1"
    cidr_blocks    = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allows_SSH_${var.COMPONENT}"
  }
}

# Output 
output "sgid" {
    value  =  aws_security_group.allows_ssh.id
}