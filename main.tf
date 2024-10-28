# main.tf

# Specify the Terraform required version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
        }
  }
}

# Call the S3 module
module "s3_buckets" {
  source = "./modules/s3"  # Path to your S3 module ,
  source = "./modules/test_glue"  # Path to your glue module
}
