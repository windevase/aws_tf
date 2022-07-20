resource "aws_db_instance" "hjko_db" {
  allocated_storage = 20
  storage_type = "gp2"
  engine = "mysql"
  engine_version = "8.0"
  instance_class = "db.t2.micro"
  db_name = "wordpress"
  identifier = "wordpress"
  username = "root"
  password = "It12345!"
  parameter_group_name = "default.mysql8.0"
  availability_zone = "ap-northeast-2a"
  db_subnet_group_name = aws_db_subnet_group.hjko_dbsg.id
  vpc_security_group_ids = [aws_security_group.hjko_sg.id]
  skip_final_snapshot = true
  tags = {
    "name" = "hjko-db"
  }
}

resource "aws_db_subnet_group" "hjko_dbsg" {
  name = "hjko-dbsg"
  subnet_ids = [aws_subnet.db_a.id, aws_subnet.db_c.id]
}