provider "aws" {
  region = "us-east-1"  # Change this to your preferred AWS region
}

resource "aws_s3_bucket" "in_bucket" {
  bucket = "in"
}

resource "aws_s3_bucket" "out_bucket" {
  bucket = "out"
}

resource "aws_s3_bucket" "tmp_bucket" {
  bucket = "tmp"
}

resource "aws_s3_bucket" "export_bucket" {
  bucket = "export"
}
