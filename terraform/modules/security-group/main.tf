resource "aws_security_group" "alpha_sg" {
  name        = var.sg_name
  description = "Security group for example usage with EC2 instance"
  vpc_id      = var.vpc_id
}

resource "aws_security_group_rule" "ingress_rules" {
  count = length(var.ingress_rules)
  type              = "ingress"
  from_port         = var.ingress_rules[count.index]
  to_port           = var.ingress_rules[count.index]
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  description       = "lemp-web-server"
  security_group_id = aws_security_group.alpha_sg.id
}

resource "aws_security_group_rule" "allow_all" {
  type              = "egress"
  to_port           = 0
  protocol          = "-1"
  from_port         = 0
  security_group_id = aws_security_group.alpha_sg.id
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_network_interface_sg_attachment" "sg_public_attachment" {
  count = var.number
  security_group_id    = aws_security_group.alpha_sg.id
  network_interface_id = var.primary_network_interface_id
}

