data "aws_ami" "myami" {
  most_recent   = true
  name_regex    = "ansible-base"
  owners        = ["self"]
}