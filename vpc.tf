module "vpc" {
  source               = "git::https://github.com/terraform-aws-modules/terraform-aws-vpc.git?ref=v3.1.0"
  name                 = var.vpc_name
  cidr                 = var.vpc_cidr
  azs                  = data.aws_availability_zones.available.names
  private_subnets      = var.public_subnets_cidr
  public_subnets       = var.private_subnets_cidr
  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true

  tags = {
    "name" = "jenkins-vpc"
  }
}