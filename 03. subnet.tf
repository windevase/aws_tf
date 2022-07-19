resource "aws_subnet" "web_a" {
  vpc_id            = aws_vpc.hjko_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "web-puba"
  }
}

resource "aws_subnet" "web_c" {
  vpc_id            = aws_vpc.hjko_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    Name = "web-pubc"
  }
}

resource "aws_subnet" "was_a" {
  vpc_id            = aws_vpc.hjko_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "was-pria"
  }
}

resource "aws_subnet" "was_c" {
  vpc_id            = aws_vpc.hjko_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    Name = "was-pric"
  }
}

resource "aws_subnet" "db_a" {
  vpc_id            = aws_vpc.hjko_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "db-pria"
  }
}

resource "aws_subnet" "db_c" {
  vpc_id            = aws_vpc.hjko_vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    Name = "db-pric"
  }
}
