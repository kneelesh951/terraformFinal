# Variable for the name of the secret
variable "secret_name" {
  description = "Name of the secret to be created"
  type        = string
  default     = "example_secret"  # Default name for the secret
}

# Variable for the secret description
variable "secret_description" {
  description = "Description of the secret"
  type        = string
  default     = "An example secret to store API key"  # Default description
}
