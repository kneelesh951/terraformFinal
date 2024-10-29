variable "step_function_role_name" {
  description = "Name of the IAM role to use for Step Functions"
  type        = string
  default     = "terraformDemo"  # the actual role name
}
