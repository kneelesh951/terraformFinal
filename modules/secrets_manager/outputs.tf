# Output the ARN of the created secret
output "secret_arn" {
  description = "The ARN of the created Secrets Manager secret"
  value       = aws_secretsmanager_secret.example_secret.arn
}

# Output the name of the created secret
output "secret_name" {
  description = "The name of the created Secrets Manager secret"
  value       = aws_secretsmanager_secret.example_secret.name
}
