output "instance_profile_name" {
  description = "IAM Instance Profile Name"
  value       = aws_iam_instance_profile.this.name
}

output "role_name" {
  description = "IAM Role Name"
  value       = aws_iam_role.this.name
}
