#VPC
resource "aws_vpc" "alpha_vpc" {
	cidr_block = "10.0.0.0/16"
	instance_tenancy = "default"
	enable_dns_support = "true"
	enable_dns_hostnames = "true"
	enable_classiclink = "false"
	tags = {
		Name = var.vpc_name
	}
}




# Public Subnets
resource "aws_subnet" "public_1a" {
	vpc_id = aws_vpc.alpha_vpc.id
	cidr_block = var.public_subnet
	map_public_ip_on_launch = "true"
	availability_zone = var.ava_zone_1
	tags = {
		Name = "public-subnet"
	}
}




# Internet Gateway 
resource "aws_internet_gateway" "alpha_vpc_igw" {
	vpc_id = aws_vpc.alpha_vpc.id
	tags = {
		Name = "ss_igw"
	}
}

#Public Route Table
resource "aws_route_table" "public_RT" {
	vpc_id = aws_vpc.alpha_vpc.id
	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = aws_internet_gateway.alpha_vpc_igw.id
	}
	tags = {
		Name = "public_RT"
	}
}

#Public Subnet Associations
resource "aws_route_table_association" "public_assoc1" {
	subnet_id = aws_subnet.public_1a.id
	route_table_id = aws_route_table.public_RT.id
}

