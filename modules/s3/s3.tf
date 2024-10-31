# Check for existing S3 buckets
data "aws_s3_bucket" "existing_in_bucket" {
  bucket = var.in_bucket_name
}

data "aws_s3_bucket" "existing_out_bucket" {
  bucket = var.out_bucket_name
}

data "aws_s3_bucket" "existing_tmp_bucket" {
  bucket = var.tmp_bucket_name
}

data "aws_s3_bucket" "existing_export_bucket" {
  bucket = var.export_bucket_name
}

# Create S3 buckets only if they do not already exist
resource "aws_s3_bucket" "in_bucket" {
  count  = data.aws_s3_bucket.existing_in_bucket.id == "" ? 1 : 0
  bucket = var.in_bucket_name
}

resource "aws_s3_bucket" "out_bucket" {
  count  = data.aws_s3_bucket.existing_out_bucket.id == "" ? 1 : 0
  bucket = var.out_bucket_name
}

resource "aws_s3_bucket" "tmp_bucket" {
  count  = data.aws_s3_bucket.existing_tmp_bucket.id == "" ? 1 : 0
  bucket = var.tmp_bucket_name
}

resource "aws_s3_bucket" "export_bucket" {
  count  = data.aws_s3_bucket.existing_export_bucket.id == "" ? 1 : 0
  bucket = var.export_bucket_name
}
