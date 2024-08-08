# Request a spot instance at $0.03

resource "aws_spot_instance_request" "spot" {
  ami = "data.aws_ami.myami.id"
  instance_type = "t3.micro"
  wait_for_fulfillment = true
  vpc_security_group_ids = [aws_security_group.allows_ssh.id]

  tags = {
    Name = var.COMPONET
  }
}





# resource "aws_spot_instance_request" "cheap_worker" {
#   ami           = "ami-1234"
#   spot_price    = "0.03"
#   instance_type = "c4.xlarge"

#   tags = {
#     Name = "CheapWorker"
#   }
# }