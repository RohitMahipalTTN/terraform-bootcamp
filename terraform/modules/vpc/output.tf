output "vpc_id" {
	value = aws_vpc.alpha_vpc.id
}

#Public Subnet ID's

output "pb_subnet_1a" {
	value = aws_subnet.public_subnet[*].id
}
