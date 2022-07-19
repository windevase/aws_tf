# resource "aws_route_table_association" "hjko_wasa" {
#   subnet_id      = aws_subnet.was_a.id
#   route_table_id = aws_route_table.hjko_nrt.id
# }

# resource "aws_route_table_association" "hjko_wasc" {
#   subnet_id      = aws_subnet.was_c.id
#   route_table_id = aws_route_table.hjko_nrt.id
# }

# resource "aws_route_table_association" "hjko_dba" {
#   subnet_id      = aws_subnet.db_a.id
#   route_table_id = aws_route_table.hjko_nrt.id
# }

# resource "aws_route_table_association" "hjko_dbc" {
#   subnet_id      = aws_subnet.db_c.id
#   route_table_id = aws_route_table.hjko_nrt.id
# }