output "subnet_id" {
  description = "Subnet ID"
  value       = aws_subnet.this.id
}

output "subnet_cidr" {
  description = "Subnet CIDR"
  value       = aws_subnet.this.cidr_block
}
