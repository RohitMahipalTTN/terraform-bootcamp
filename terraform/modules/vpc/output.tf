output "vpc_id" {
	value = aws_vpc.alpha_vpc.id
}

#Public Subnet ID's

output "public_subnet" {
	value = aws_subnet.public_subnet[*].id
}
