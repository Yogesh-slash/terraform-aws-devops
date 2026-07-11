module "vpc" {
  source = "./modules/vpc"

  vpc_cidr = "10.0.0.0/16"
  vpc_name = "dev-vpc"
}

module "subnet" {
  source = "./modules/subnet"

  vpc_id            = module.vpc.vpc_id
  subnet_cidr       = "10.0.1.0/24"
  availability_zone = "ap-southeast-2a"
  subnet_name       = "public-subnet-1"
}

module "internet_gateway" {
  source = "./modules/internet-gateway"

  vpc_id   = module.vpc.vpc_id
  igw_name = "dev-igw"
}

module "route_table" {
  source = "./modules/route-table"

  vpc_id           = module.vpc.vpc_id
  igw_id           = module.internet_gateway.igw_id
  route_table_name = "dev-public-rt"
}

module "route_table_association" {
  source = "./modules/route-table-association"

  subnet_id      = module.subnet.subnet_id
  route_table_id = module.route_table.route_table_id
}

module "security_group" {
  source = "./modules/security-group"

  vpc_id              = module.vpc.vpc_id
  security_group_name = "dev-sg"
}
module "iam" {
  source = "./modules/iam"

  role_name             = "dev-ec2-role"
  instance_profile_name = "dev-ec2-profile"
}

module "ec2" {
  source = "./modules/ec2"

  ami_id                = "ami-05eb083f152e1dc5e"
  instance_type         = "t3.micro"
  subnet_id             = module.subnet.subnet_id
  security_group_id     = module.security_group.security_group_id
  key_name              = "jenkins-agent-key"
  instance_name         = "dev-ec2"
  instance_profile_name = module.iam.instance_profile_name
}
