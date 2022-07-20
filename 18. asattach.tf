resource "aws_autoscaling_attachment" "hjko_asatt" {
  autoscaling_group_name = aws_autoscaling_group.hjko_atsg.id
  lb_target_group_arn = aws_lb_target_group.hjko_albtg.arn
}