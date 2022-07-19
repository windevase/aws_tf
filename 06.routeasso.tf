resource "aws_route_table_association" "hjko_puba" {
  subnet_id      = aws_subnet.web_a.id
  route_table_id = aws_route_table.hjko_rt.id
}

resource "aws_route_table_association" "hjko_pubc" {
  subnet_id      = aws_subnet.web_c.id
  route_table_id = aws_route_table.hjko_rt.id
}