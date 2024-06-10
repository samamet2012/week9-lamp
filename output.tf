
## Output.tf

output "public" {
  value = aws_lightsail_instance.lampserver.public_ip_address
}
output "username" {
  value = aws_lightsail_instance.lampserver.username
}

output "ssh-command" {
  value = "ssh -i ${local_file.ssh_key.filename} ${aws_lightsail_instance.lampserver.username}@${aws_lightsail_instance.lampserver.public_ip_address}"
}

output "dns-name" {
  value = aws_route53_record.rc1.name
}
