resource "aws_lb_target_group" "alpha_tg" {
  port     = 80
  protocol = "HTTP"
  //target_type = "ip"
  vpc_id   = var.vpc_id
}

resource "aws_lb_target_group_attachment" "alpha_tga" {
 target_group_arn = aws_lb_target_group.alpha_tg.arn
 target_id        = var.public_instance_id
 port             = 80
}

resource "aws_lb" "alpha_alb" {
 name               = "${var.environment}-${var.alb_name}"
 internal           = false
 load_balancer_type = "application"
 security_groups    = var.security_group_ids
 subnets            = var.public_subnets

 tags = {
   environment = "${var.environment}"
 }
}
resource "aws_lb_listener" "front_end" {
 load_balancer_arn = aws_lb.alpha_alb.arn
 port              = "80"
 protocol          = "HTTP"

 default_action {
   type             = "forward"
   target_group_arn = aws_lb_target_group.alpha_tg.arn
 }
}