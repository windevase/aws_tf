resource "aws_ami_from_instance" "hjko_ami" {
  name               = "hjko-ami"
  source_instance_id = aws_instance.hjko_web.id
  tags = {
    "Name" = "hjko-web"
  }  
  depends_on = [
    aws_instance.hjko_web
  ]
}