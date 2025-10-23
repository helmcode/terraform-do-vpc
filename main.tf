resource "digitalocean_vpc" "main" {
  name = var.vpc_name
  region = var.region
  ip_range = var.cidr_range
}

resource "digitalocean_vpc_nat_gateway" "main" {
  count = var.nat_gateway ? 1 : 0
  name = "${var.vpc_name}-main"
  type = "PUBLIC"
  region = var.region
  size =  var.nat_gateway_size
  vpcs {
    default_gateway = true
    vpc_uuid = digitalocean_vpc.main.id
  }
}
