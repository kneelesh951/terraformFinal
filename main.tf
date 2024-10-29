 
 # main.tf

# Terraform required version.
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
        }
  }
}

# Call the S3 module
# module "s3_buckets" { 
 #  source = "./modules/s3"  # Path to  S3 module .

 #  }

# Call the Glue module
# module "test_glue" {
 #  source = "./modules/test_glue"  # Path to  Glue module 
# }

# Call the step functions
 # module "step_functions" {
 #  source = "./modules/step_functions"  # Path to  Glue module 
 # }

#  # Call the secrets manager
#  module "secrets_manager" {
#   source = "./modules/secrets_manager"  # Path to  Glue module 
#  }

  # Call the vpc manager
 module "vpc" {
  source = "./modules/vpc"  # Path to  Glue module 
 }