resource "aws_vpc" "hjko_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "hjko-vpc"
  }
}
