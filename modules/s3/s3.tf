# --------------------------------------------------------------------------------------
# Check for existing S3 buckets
# --------------------------------------------------------------------------------------
# These `data` resources look for each specified bucket by name in AWS.
# If a bucket exists with the given name, it will return the bucket's details.
# If it doesn't exist, the `id` attribute will be empty, which we can use to control
# whether Terraform should create a new bucket or skip creation.

data "aws_s3_bucket" "existing_in_bucket" {
  bucket = var.in_bucket_name  # Checks if the input bucket exists in AWS
}

data "aws_s3_bucket" "existing_out_bucket" {
  bucket = var.out_bucket_name  # Checks if the output bucket exists in AWS
}

data "aws_s3_bucket" "existing_tmp_bucket" {
  bucket = var.tmp_bucket_name  # Checks if the temporary bucket exists in AWS
}

data "aws_s3_bucket" "existing_export_bucket" {
  bucket = var.export_bucket_name  # Checks if the export bucket exists in AWS
}


# --------------------------------------------------------------------------------------
# Create S3 buckets only if they do not already exist
# --------------------------------------------------------------------------------------
# Each `resource` block will create a new S3 bucket only if a bucket with the specified
# name does not already exist in AWS.
# The `count` attribute uses a condition that evaluates whether the existing bucket's
# `id` is empty. If the `id` is empty, count is set to 1 (creating the bucket).
# Otherwise, count is set to 0 (skipping creation).

resource "aws_s3_bucket" "in_bucket" {
  count  = data.aws_s3_bucket.existing_in_bucket.id == "" ? 1 : 0  # Creates only if no bucket with in_bucket_name exists
  bucket = var.in_bucket_name
}

resource "aws_s3_bucket" "out_bucket" {
  count  = data.aws_s3_bucket.existing_out_bucket.id == "" ? 1 : 0  # Creates only if no bucket with out_bucket_name exists
  bucket = var.out_bucket_name
}

resource "aws_s3_bucket" "tmp_bucket" {
  count  = data.aws_s3_bucket.existing_tmp_bucket.id == "" ? 1 : 0  # Creates only if no bucket with tmp_bucket_name exists
  bucket = var.tmp_bucket_name
}

resource "aws_s3_bucket" "export_bucket" {
  count  = data.aws_s3_bucket.existing_export_bucket.id == "" ? 1 : 0  # Creates only if no bucket with export_bucket_name exists
  bucket = var.export_bucket_name
}
