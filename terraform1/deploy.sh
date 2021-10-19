#!/bin/bash
terraform init
terraform plan -input=false -out tfplan -var-file=terraform.tfvars -lock=false
terraform apply -input=false tfplan