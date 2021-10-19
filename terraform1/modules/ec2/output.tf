output "public_instance_id" {
description = "ID of Public instances"
  value       = aws_instance.alpha_public_instance.id
}

output "public_arn" {
  description = "ARN of Public instances"
  value       = aws_instance.alpha_public_instance.arn
}

output "public_dns" {
  description = "public DNS names assigned to the instances. For EC2-VPC, alpha_instance is only available if you've enabled DNS hostnames for your VPC"
  value       = aws_instance.alpha_public_instance.public_dns
}

output "public_ip" {
  description = "public IP addresse assigned to the instances, if applicable"
  value       = aws_instance.alpha_public_instance.public_ip
}


output "public_instance_state" {
  description = "instance states of instances"
  value       = aws_instance.alpha_public_instance.instance_state
}