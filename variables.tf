variable "vpc_name" {
  description = "Name of the VPC"
  type = string
}

variable "cidr_range" {
  description = "CIDR Address range of the VPC (Range between /16 and /24)"
  type = string
  default = "10.0.0.0/16"
}

variable "region" {
  description = "Region where the VPC will be created"
  type = string
}

variable "project_id" {
  description = "Project ID where the VPC will be assigned"
  type = string
}

variable "nat_gateway" {
  description = "Assign a NAT Gateway for the VPC"
  type = bool
  default = true
}

variable "nat_gateway_size" {
  description = "Count of NAT Gateway endpoints"
  type = number
  default = 1
}
