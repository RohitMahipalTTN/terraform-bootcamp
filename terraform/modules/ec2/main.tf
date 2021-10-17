// CUSTOM AMI CREATION...
resource "aws_ami_from_instance" "alpha_public_ami" {
  name      = "${var.environment}-LEMP-Server AMI"
  source_instance_id = var.instance_id
  tags          = {
    Name      = "${var.environment}-LEMP-Server AMI"
    Use      = "Devops Bootcamp"
  }
}

//EC2-INSTANCE CREATION...
resource "aws_instance" "alpha_public_instance" {
  ami           = aws_ami_from_instance.alpha_public_ami.id # us-east-1
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_id
  key_name      = var.key_name
  associate_public_ip_address = true
  disable_api_termination = var.disable_api_termination
  tags          = {
    Name      = "${var.environment}-Lemp-Server"
    Use      = "Devops Bootcamp"
  }
}

