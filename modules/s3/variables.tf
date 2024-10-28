variable "in_bucket_name" {
  description = "Name of the input S3 bucket"
  type        = string
  default     = "test-in"  # Set default value
}

variable "out_bucket_name" {
  description = "Name of the output S3 bucket"
  type        = string
  default     = "test-out"  # Set default value
}

variable "tmp_bucket_name" {
  description = "Name of the temporary S3 bucket"
  type        = string
  default     = "test-tmp"  # Set default value
}

variable "export_bucket_name" {
  description = "Name of the export S3 bucket"
  type        = string
  default     = "test-export"  # Set default value
}
