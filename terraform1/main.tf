provider "aws" {
   region = var.region
}

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "ttn-terrafrom-state"
    key            = "global/s3/q4/terraform.tfstate"
    region ="us-east-1"
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}

module "ec2" {
  source = "./modules/ec2"
  ami = var.ami
  instance_type = var.instance_type
  public_subnet_id = module.vpc.public_subnet[0]
  key_name = var.key_name
  disable_api_termination = var.disable_api_termination
  environment = var.environment
}

module "iam" {
    source = "./modules/iam"
    
}