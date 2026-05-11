module "vpc" {

  aws_region         = var.aws_region
  vpc_cidr           = var.vpc_cidr
  project            = var.project
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
  availability_zones = var.availability_zones

  source = "./modules/vpc"
}
module "eks" {
  private_subnet_ids = module.vpc.private_subnet_ids
  public_subnet_ids  = module.vpc.public_subnet_ids
  source             = "./modules/eks"
  cluster_name       = var.cluster_name
  cluster_version    = var.cluster_version
  node_group_name    = var.node_group_name
  desired_size       = var.desired_size
  max_size           = var.max_size
  min_size           = var.min_size
  max_unavailable    = var.max_unavailable
}

