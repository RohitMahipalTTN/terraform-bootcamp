region ="us-east-1"
bucket         = "ttn-terrafrom-state"
key            = "global/s3/terraform.tfstate"
dynamodb_table = "terraform-up-and-running-locks"
encrypt        = true
availability_zones =["us-east-1a" , "us-east-1b"]
public_subnets_cidr =["10.0.1.0/24" , "10.0.2.0/24" ]
vpc_name = "zero_touch_vpc"
environment = "Testing"
key_name = "rohitTTN"
disable_api_termination = "false"
instance_type = "t2.micro"
instance_id = "i-0cdbe48490d424a38"
sg_name = "ttn-test"
ingress_rules = [22,80,5000]
alb_name = "ttn-alb"