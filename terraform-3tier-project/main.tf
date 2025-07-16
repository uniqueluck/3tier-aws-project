module "vpc" {
  source            = "./modules/vpc"
  vpc_cidr          = var.vpc_cidr
  public_subnets    = var.public_subnets
  private_subnets   = var.private_subnets
  availability_zones = var.availability_zones
}

module "ec2" {
  source            = "./modules/ec2"
  public_subnets    = module.vpc.public_subnets
  private_subnets   = module.vpc.private_subnets
  vpc_id            = module.vpc.vpc_id
  instance_type     = var.instance_type
  key_name          = var.key_name
}

module "rds" {
  source            = "./modules/rds"
  private_subnets   = module.vpc.private_subnets
  vpc_id            = module.vpc.vpc_id
  db_username       = var.db_username
  db_password       = var.db_password
}
