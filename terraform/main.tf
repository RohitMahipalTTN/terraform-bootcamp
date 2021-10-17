provider "aws" {
   region = var.region
}

module "vpc" {
  source = "./modules/vpc"
  availability_zones = var.availability_zones
  region = var.region
  public_subnets_cidr = var.public_subnets_cidr
  vpc_name = var.vpc_name
}