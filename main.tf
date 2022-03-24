# VPC

resource "aws_vpc" "trustech" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support
  tags                 = var.vpc_tags
}

output "vpc_id" {
  value = aws_vpc.trustech.id
}

# Subnet

resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.trustech.id
  availability_zone       = var.availability_zone
  cidr_block              = var.pub_cidr        
  map_public_ip_on_launch = true        
  tags = var.pub_tags
}