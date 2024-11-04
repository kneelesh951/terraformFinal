output "namespace_id" {
  description = "The ID of the Redshift namespace"
  value       = aws_redshiftserverless_namespace.redshift.id
}

output "workgroup_id" {
  description = "The ID of the Redshift workgroup"
  value       = aws_redshiftserverless_workgroup.redshift.id
}
