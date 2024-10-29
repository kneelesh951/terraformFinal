# Create a new secret in AWS Secrets Manager
resource "aws_secretsmanager_secret" "example_secret" {
  name        = "example_secret"  # Name of the secret
  description = "An example secret to store API key"  # Description to help identify the secret
}

# Define the secret's version and store the API key data
resource "aws_secretsmanager_secret_version" "example_secret_version" {
  secret_id     = aws_secretsmanager_secret.example_secret.id  # Link this version to the secret created above
  secret_string = jsonencode({  # Store the API key in JSON format
    api_key = "test12345"  # test api key value
  })
}
