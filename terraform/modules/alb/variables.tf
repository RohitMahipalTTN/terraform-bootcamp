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
}

variable public_subnet {
	type = list(string)
}

variable alb_name {
	type = string
}