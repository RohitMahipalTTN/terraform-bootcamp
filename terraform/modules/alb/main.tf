resource "aws_lb_target_group" "alpha_tg" {
  port     = 80
  protocol = "HTTP"
  target_type = "ip"
  vpc_id   = var.vpc_id
}

