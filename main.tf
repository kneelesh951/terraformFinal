# root/main.tf

# Define the environment variable to choose which environment to deploy.--
variable "environment" {
  description = "The environment to deploy (dev, sit, prod)"
  type        = string
}

# Load environment-specific configurations based on the environment variable
module "environment" {
  source = "./env/${var.environment}"  # Use the environment variable to point to the correct folder
}
