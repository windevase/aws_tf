resource "aws_placement_group" "hjko_pg" {
  name = "hjko-pg"
  strategy = "cluster"
  }

resource "aws_autoscaling_group" "hjko_atsg" {
  name = "hjko-atsg"
  min_size = 1
  max_size = 10
  health_check_grace_period = 60
  health_check_type = "EC2"
  desired_capacity = 1
  force_delete = false
  launch_configuration = aws_launch_configuration.hjko_lacf.name
  vpc_zone_identifier = [aws_subnet.web_a.id, aws_subnet.web_c.id]
}