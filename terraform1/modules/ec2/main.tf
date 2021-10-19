resource "aws_instance" "alpha_public_instance" {
  ami           = var.ami # us-east-1
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_id
  key_name      = var.key_name
  associate_public_ip_address = true
  user_data = "${file("install_apache.sh")}"
  disable_api_termination = var.disable_api_termination
  tags          = {
    Name      = "${var.environment}-Lemp-Server"
    Use      = "Devops Bootcamp"
  }
}

