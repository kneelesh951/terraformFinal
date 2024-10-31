# modules/s3/main.tf

# Check if the input S3 bucket already exists
data "aws_s3_bucket" "existing_in_bucket" {
  bucket = var.in_bucket_name
}

# Create the input S3 bucket if it does not exist
resource "aws_s3_bucket" "in_bucket" {
  count  = data.aws_s3_bucket.existing_in_bucket.id == "" ? 1 : 0
  bucket = var.in_bucket_name
}

# Check if the output S3 bucket already exists
data "aws_s3_bucket" "existing_out_bucket" {
  bucket = var.out_bucket_name
}

# Create the output S3 bucket if it does not exist
resource "aws_s3_bucket" "out_bucket" {
  count  = data.aws_s3_bucket.existing_out_bucket.id == "" ? 1 : 0
  bucket = var.out_bucket_name
}

# Check if the temporary S3 bucket already exists
data "aws_s3_bucket" "existing_tmp_bucket" {
  bucket = var.tmp_bucket_name
}

# Create the temporary S3 bucket if it does not exist
resource "aws_s3_bucket" "tmp_bucket" {
  count  = data.aws_s3_bucket.existing_tmp_bucket.id == "" ? 1 : 0
  bucket = var.tmp_bucket_name
}

# Check if the export S3 bucket already exists
data "aws_s3_bucket" "existing_export_bucket" {
  bucket = var.export_bucket_name
}

# Create the export S3 bucket if it does not exist
resource "aws_s3_bucket" "export_bucket" {
  count  = data.aws_s3_bucket.existing_export_bucket.id == "" ? 1 : 0
  bucket = var.export_bucket_name
}
