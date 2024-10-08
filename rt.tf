resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }


  tags = {
    Name = var.aws_rt
  }
}
resource "aws_route_table_association" "rt-a" {
  subnet_id      = aws_subnet.main.id
  route_table_id = aws_route_table.rt.id
}