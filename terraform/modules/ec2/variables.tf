#  EC2 variables
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

variable public_subnet_id {
	type = string
}

variable instance_id {
	type = string
}
