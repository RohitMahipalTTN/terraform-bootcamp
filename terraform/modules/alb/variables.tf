variable vpc_id {
	type = string
}

variable public_instance_id {
	type = string
}

variable environment {
	type = string
}

variable security_group_ids {
	type = list(string)
	default     = []
}

variable public_subnets {
	type = list(string)
	default     = []
}

variable alb_name {
	type = string
}