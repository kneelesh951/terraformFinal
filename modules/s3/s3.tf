resource "aws_s3_bucket" "in_bucket" {
  bucket = var.in_bucket_name
}

resource "aws_s3_bucket" "out_bucket" {
  bucket = var.out_bucket_name
}

resource "aws_s3_bucket" "tmp_bucket" {
  bucket = var.tmp_bucket_name
}

resource "aws_s3_bucket" "export_bucket" {
  bucket = var.export_bucket_name
}
