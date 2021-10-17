#VPC module variables
variable region {
	type = string
}
variable availability_zones {
	type = list(string)
}
variable public_subnets_cidr {
	type = list(string)
}
variable vpc_name {
	type = string
}
variable environment {
	type = string
}