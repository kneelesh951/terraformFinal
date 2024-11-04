variable "namespace_name" {
  description = "The name of the Redshift Serverless namespace"
  type        = string
  default     = "datawarehouse"
}

variable "adminuser" {
  description = "The admin user name for Redshift"
  type        = string
  default     = "admin"
}

variable "admin_user_password" {
  description = "The admin user password for Redshift"
  type        = string
  sensitive   = true
}

variable "workgroup_name" {
  description = "The name of the Redshift Serverless workgroup"
  type        = string
  default     = "cap"
}

variable "base_capacity" {
  description = "The base capacity of the Redshift Serverless workgroup"
  type        = number
  default     = 32
}

variable "cidr_blocks" {
  description = "CIDR blocks for inbound access to Redshift"
  type        = list(string)
  default     = ["0.0.0.0/0"] # Adjust for better security
}
