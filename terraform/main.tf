provider "aws" {
   region = var.region
}

module "vpc" {
  source = "./modules/vpc"
  availability_zones = var.availability_zones
  region = var.region
  public_subnets_cidr = var.public_subnets_cidr
  vpc_name = var.vpc_name
  environment = var.environment
}

module "ec2" {
  source = "./modules/ec2"
  instance_id = var.instance_id
  instance_type = var.instance_type
  public_subnet_id = module.vpc.public_subnet[0]
  key_name = var.key_name
  disable_api_termination = var.disable_api_termination
  environment = var.environment
}

module "security-group" {
  source = "./modules/security-group"
  sg_name = var.sg_name
  vpc_id = module.vpc.vpc_id
  ingress_rules = var.sg_name
  network_interface_id = module.ec2.primary_network_interface_id
}