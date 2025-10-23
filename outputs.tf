output "vpc_id" {
  description = "VPC ID"
  value = digitalocean_vpc.main.id
}

output "vpc_nat_gateway_id" {
  description = "VPC Nat Gateway ID"
  value = var.nat_gateway? digitalocean_vpc_nat_gateway.main[0].id : null
}

output "vpc_nat_gateway_id_ips" {
  description = "VPC Nat Gateway egresses IPs"
  value = var.nat_gateway? digitalocean_vpc_nat_gateway.main[0].egresses : null
}
