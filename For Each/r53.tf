resource "aws_route53_record" "www" {
  for_each = aws_instance.my_terraform
  zone_id = var.zone_id
  #interpolation which means we are using . and getting data and comining it for output
  name    = "${each.key}.${var.domain_name}" #mongodb.saiswetha.online
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
  allow_overwrite  = true
}