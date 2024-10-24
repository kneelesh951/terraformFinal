resource "aws_s3_bucket" "in_bucket" {
  bucket = "test-in-bucket-12"
}

resource "aws_s3_bucket" "out_bucket" {
  bucket = "test-out-bucket-12"
}

resource "aws_s3_bucket" "tmp_bucket" {
  bucket = "test-tmp-bucket-12"
}

resource "aws_s3_bucket" "export_bucket" {
  bucket = "test-export-bucket-12"
}
