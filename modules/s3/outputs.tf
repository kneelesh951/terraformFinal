output "in_bucket_arn" {
  description = "The ARN of the input S3 bucket"
  value       = aws_s3_bucket.in_bucket.arn
}

output "out_bucket_arn" {
  description = "The ARN of the output S3 bucket"
  value       = aws_s3_bucket.out_bucket.arn
}

output "tmp_bucket_arn" {
  description = "The ARN of the temporary S3 bucket"
  value       = aws_s3_bucket.tmp_bucket.arn
}

output "export_bucket_arn" {
  description = "The ARN of the export S3 bucket"
  value       = aws_s3_bucket.export_bucket.arn
}
