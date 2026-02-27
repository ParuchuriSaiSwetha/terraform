resource "aws_route53_record" "www" {
  count = 10
  zone_id = var.zone_id
  #interpolation which means we are using . and getting data and comining it for output
  name    = "${var.instance[count.index]}.${var.domain_name}" #mongodb.saiswetha.online
  type    = "A"
  ttl     = 1
  records = [aws_instance.terraform[count.index].private_ip]
}