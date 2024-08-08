resource "aws_route53_record" "www" {
  zone_id = "Z10223012SM6RX1D1FGKM"
  name    = "${var.COMPONENT}-dev.robot.internal"
  type    = "A"
  ttl     = 300
  #records = [aws_spot_instance_request.spot.lb.private_ip]
  records = [aws_spot_instance_request.spot.private_ip]
}

