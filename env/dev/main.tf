 
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
 module "s3_buckets" { 
    source = "../../modules/s3"  # Path to the S3 module
    bucket_name= var.bucket_name_for_data
    environment = var.environment 
  }
 module "s3_buckets" { 
    source = "../../modules/s3"  # Path to the S3 module
    bucket_name= var.bucket_name_for_script
    environment = var.environment 
  }
# Call the Glue module
 module "test_glue" {
   source = "./modules/test_glue"  # Path to  Glue module 
 }

# Call the step functions
 # module "step_functions" {
 #  source = "./modules/step_functions"  # Path to  step functions 
 # }

#  # Call the secrets manager
#  module "secrets_manager" {
#   source = "./modules/secrets_manager"  # Path to  secrets manager
#  }

  # Call the vpc manager
 #module "vpc" {
  #source = "./modules/vpc"  # Path to  vpc
 #}