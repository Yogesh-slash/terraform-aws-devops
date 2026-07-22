output "vpc_id" {
  description = "Created VPC ID"

  value = module.vpc.vpc_id
}

output "vpc_cidr" {
  description = "Created VPC CIDR"

  value = module.vpc.vpc_cidr
}

output "ec2_public_ip" {
  description = "EC2 Public IP"
  value       = module.ec2.public_ip
}

output "ec2_private_ip" {
  description = "EC2 Private IP"
  value       = module.ec2.private_ip
}

output "ec2_instance_id" {
  description = "EC2 Instance ID"
  value       = module.ec2.instance_id
}