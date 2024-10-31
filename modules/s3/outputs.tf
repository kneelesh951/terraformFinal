# Output for the ARN of the input S3 bucket
output "in_bucket_arn" {
  value = length(aws_s3_bucket.in_bucket) > 0 ? aws_s3_bucket.in_bucket[0].arn : "Input Bucket not created"
  description = "The ARN of the input S3 bucket."
}

# Output for the ARN of the output S3 bucket
output "out_bucket_arn" {
  value = length(aws_s3_bucket.out_bucket) > 0 ? aws_s3_bucket.out_bucket[0].arn : "Output Bucket not created"
  description = "The ARN of the output S3 bucket."
}

# Output for the ARN of the temporary S3 bucket
output "tmp_bucket_arn" {
  value = length(aws_s3_bucket.tmp_bucket) > 0 ? aws_s3_bucket.tmp_bucket[0].arn : "Temporary Bucket not created"
  description = "The ARN of the temporary S3 bucket."
}

# Output for the ARN of the export S3 bucket
output "export_bucket_arn" {
  value = length(aws_s3_bucket.export_bucket) > 0 ? aws_s3_bucket.export_bucket[0].arn : "Export Bucket not created"
  description = "The ARN of the export S3 bucket."
}
