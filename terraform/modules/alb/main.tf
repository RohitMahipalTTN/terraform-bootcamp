resource "aws_lb_target_group" "alpha_tg" {
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
}

resource "aws_lb_target_group_attachment" "test" {
  target_group_arn = aws_lb_target_group.alpha_tg.arn
  target_id        = var.public_instance_id
  port             = 80
}

