#Terrafrom variables
variable bucket {
	type = string
}
variable key {
	type = string
}
variable dynamodb_table {
	type = string
}
variable encrypt {
	type = string
}

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

#EC2 module variables

variable key_name {
	type = string
}

variable disable_api_termination {
	type = bool
    default = true
}

variable instance_type {
	type = string
}

variable instance_id {
	type = string
}

#SECURITY GROUP module variables

variable sg_name {
    type = string
}

variable "ingress_rules" {
    type = list(string)
}

#ALB module variables

variable alb_name {
	type = string
}

variable public_instance_id {
	type = string
}

variable security_group_ids {
	type = list(string)
}

variable public_subnet {
	type = list(string)
}