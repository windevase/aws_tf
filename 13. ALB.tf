resource "aws_lb" "hjko_alb" {
  name               = "hjko-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.hjko_sg.id]
  subnets = [aws_subnet.web_a.id, aws_subnet.web_c.id,]

  tags = {
    name = "hjko_alb"
  }
}

output "dns_name" {
  value = aws_lb.hjko_alb.dns_name
}

resource "aws_lb_target_group" "hjko_albtg" {
  name        = "hjko-albtg"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.hjko_vpc.id

  health_check {
    enabled = true
    healthy_threshold = 3
    interval = 5
    matcher = "200"
    path = "/health.html"
    port = "traffic-port"
    protocol = "HTTP"
    timeout = 2
    unhealthy_threshold = 3
  }
}

resource "aws_lb_listener" "hjko_alblis" {
  load_balancer_arn = aws_lb.hjko_alb.arn
  port = 80
  protocol = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.hjko_albtg.arn
  }
}