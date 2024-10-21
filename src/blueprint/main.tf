provider "aws" {
  region = "ap-southeast-1"
}

module "vpc" {
 source = "terraform-aws-modules/vpc/aws"
 version = "4.0.0"

 name = var.vpc_name
 cidr = var.vpc_cidr

 azs = var.availability_zones
 public_subnets = var.public_subnets

 enable_dns_hostnames = true
 enable_dns_support = true

 map_public_ip_on_launch = true

 tags = var.custom_tags
}