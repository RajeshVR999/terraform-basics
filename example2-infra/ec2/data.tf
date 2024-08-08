data "aws_ami" "myami" {
  most_recent   = true
  name_regex    = "ec2-instance"
  owners        = ["self"]
}