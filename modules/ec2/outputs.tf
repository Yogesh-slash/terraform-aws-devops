output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.this.id
}

output "public_ip" {
  description = "EC2 Public IP"
  value       = aws_instance.this.public_ip
}

output "private_ip" {
  description = "EC2 Private IP"
  value       = aws_instance.this.private_ip
}
