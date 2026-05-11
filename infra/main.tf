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
  project            = var.project
  private_subnet_ids = module.vpc.private_subnet_ids
  public_subnet_ids  = module.vpc.public_subnet_ids
  cluster_name       = var.cluster_name
  cluster_version    = var.cluster_version
  node_group_name    = var.node_group_name
  desired_size       = var.desired_size
  max_size           = var.max_size
  min_size           = var.min_size
  max_unavailable    = var.max_unavailable
  node_instance_type = var.node_instance_type
  node_capacity_type = var.node_capacity_type
  node_ami_type      = var.node_ami_type

  source = "./modules/eks"

}
