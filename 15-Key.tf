resource "tls_private_key" "Autoscale01" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key" "Autoscale01" {
  private_key_pem = tls_private_key.Autoscale01.private_key_pem
}

output "private_key" {
  value     = tls_private_key.Autoscale01.private_key_pem
  sensitive = true
}

output "public_key" {
  value = data.tls_public_key.Autoscale01.public_key_openssh
}