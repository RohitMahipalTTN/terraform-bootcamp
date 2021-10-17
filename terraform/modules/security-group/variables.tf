# Sg variables

variable vpc_id {
	type = string
}

variable sg_name {
    type = string
}

variable "ingress_rules" {
    type = list(string)
}

variable "network_interface_id" {
    type = string
}

variable environment {
	type = string
}
