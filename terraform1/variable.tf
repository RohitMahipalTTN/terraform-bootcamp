variable key_name {
	type = string
}

variable ami {
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

variable environment {
	type = string
}