module "vpc" {

  aws_region         = var.aws_region
  vpc_cidr           = var.vpc_cidr
  project            = var.project
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
  availability_zones = var.availability_zones

  source = "./modules/vpc"
}
