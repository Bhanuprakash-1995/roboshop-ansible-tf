module "roboshop-01" {
  source                = "../../terraform-aws-vpc"
  common_tags           = var.common_tags
  project_name          = var.project_name
  environment           = var.environment
  public_subnets_cidr   = var.public_subnets_cidr
  private_subnets_cidr  = var.private_subnets_cidr
  database_subnets_cidr = var.database_subnets_cidr
  is_peering_required   = var.is_peering_required
}
