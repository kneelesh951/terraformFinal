variable "in_bucket_name" {
  description = "Name of the input S3 bucket"
  type        = string
  default     = "test-in-oct24"
}

variable "out_bucket_name" {
  description = "Name of the output S3 bucket"
  type        = string
  default     = "test-out-oct24"
}

variable "tmp_bucket_name" {
  description = "Name of the temporary S3 bucket"
  type        = string
  default     = "test-tmp-oct24"
}

variable "export_bucket_name" {
  description = "Name of the export S3 bucket"
  type        = string
  default     = "test-export-oct24"
}
