resource "aws_nat_gateway" "gw1" {
  allocation_id = data.aws_eip.nat1.id
  subnet_id     = aws_subnet.public1.id
  tags = {
    Name = "NAT 1"
  }
}

resource "aws_nat_gateway" "gw2" {
  allocation_id = data.aws_eip.nat2.id
  subnet_id     = aws_subnet.public2.id
  tags = {
    Name = "NAT 2"
  }
}