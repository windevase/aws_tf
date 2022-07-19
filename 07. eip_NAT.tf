# resource "aws_eip" "hjko_ngwip" {
#   vpc = true
# }

# resource "aws_nat_gateway" "hjko_ngw" {
#   allocation_id = aws_eip.hjko_ngwip.id
#   subnet_id     = aws_subnet.web_a.id

#   tags = {
#     Name = "hjko-ngw"
#   }
# }