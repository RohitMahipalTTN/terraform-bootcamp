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
