resource "aws_route_table" "hjko_rt" {
  vpc_id = aws_vpc.hjko_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.hjko_ig.id
  }

  tags = {
    Name = "hjko-rt"
  }
}
