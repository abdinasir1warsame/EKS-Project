terraform {
  backend "s3" {
    bucket       = "terraform-state-eks-abdinasir"
    key          = "eks-project/terraform.tfstate"
    region       = "eu-west-2"
    encrypt      = true
    use_lockfile = true
  }
}
