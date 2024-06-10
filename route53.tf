

## route53.tf

resource "aws_route53_record" "rc1" {
  zone_id = "Z0114747343OQUG02ZGIA"
  type = "A"
  ttl = 300
  name = "resume.thygrace.xyz"
  records = [ aws_lightsail_instance.lampserver.public_ip_address ]
}
