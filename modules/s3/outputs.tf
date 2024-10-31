# modules/s3/outputs.tf

output "in_bucket_arn" {
  description = "The ARN of the input S3 bucket"
  value       = try(aws_s3_bucket.in_bucket[0].arn, null)  # Safely access, return null if not created
}

output "out_bucket_arn" {
  description = "The ARN of the output S3 bucket"
  value       = try(aws_s3_bucket.out_bucket[0].arn, null)  # Safely access, return null if not created
}

output "tmp_bucket_arn" {
  description = "The ARN of the temporary S3 bucket"
  value       = try(aws_s3_bucket.tmp_bucket[0].arn, null)  # Safely access, return null if not created
}

output "export_bucket_arn" {
  description = "The ARN of the export S3 bucket"
  value       = try(aws_s3_bucket.export_bucket[0].arn, null)  # Safely access, return null if not created
}
