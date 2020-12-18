output "private_ips" {
  value = aws_instance.ec2-server.private_ip
}

output "private_key" {
  value = tls_private_key.key.private_key_pem
  #   sensitive = true

}