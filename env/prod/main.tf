 module "s3_buckets" { 
    source = "../../modules/s3"  # Path to the S3 module
    bucket_name= var. bucket_name
    environment = var.environment 
  }