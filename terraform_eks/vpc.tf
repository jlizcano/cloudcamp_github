resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "main"
  }
}

output "vpc_id" {
  value     = aws_vpc.main.id
  sensitive = false
}