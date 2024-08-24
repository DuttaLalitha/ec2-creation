resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block
  enable_dns_hostnames = true
  instance_tenancy = "default"

  tags = {
    Name = var.aws_vpc
  }
}
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.aws_subnet1_cidr_block
  map_public_ip_on_launch = true

  tags = {
    Name = var.aws_subnet1
  }
}