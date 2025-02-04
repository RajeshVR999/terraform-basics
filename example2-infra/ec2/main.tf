# Creating Ec2 Instance
resource "aws_instance" "app" {
  ami                    = data.aws_ami.myami.image_id
  instance_type          = "t3.micro"
  vpc_security_group_ids = [var.sg]

  connection {
    type = "ssh"
    user = "ec2-user"
    password = "Devops@999"
    host = self.private_ip
  }

  provisioner "remote-exec" {
    inline = [ 
        "hostname 
        hostname -i 
        pwd"
        #"ansible-pull -U https://github.com/RajeshVR999/ansible.git -e ansible_user=ec2-user -e ansible_password=Devops@999 -e COMPONENT=mongodb roboshop.yml"
     ]
  }
  tags = {
    Name = "CAE-CERT-AWS_EC2"
  }
#   provisioner "local-exec" {
#     command = <<EOF
#     cd /home/ec2-user/ansible
#     ansible -i self.private_ip -e ENV=dev COMPONENT=mongodb roboshop.yml
    
}


variable "sg" {}

output "public_ip" {
  value = aws_instance.app.public_ip
}
