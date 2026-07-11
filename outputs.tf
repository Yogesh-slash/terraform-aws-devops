output "vpc_id" {
  description = "Created VPC ID"

  value = module.vpc.vpc_id
}

output "vpc_cidr" {
  description = "Created VPC CIDR"

  value = module.vpc.vpc_cidr
}
