# configure aws provider
provider "aws" {
  region  = var.region
  profile = "chia"

}
# create vpc

module "vpc" {
  source                       = "../modules/vpc"
  region                       = var.region
  project-name                 = var.project-name
  vpc-cidr                     = var.vpc-cidr
  public_subnet_az1_cidr       = var.public_subnet_az1_cidr
  public_subnet_az2_cidr       = var.public_subnet_az2_cidr
  private_app_subnet_az1_cidr  = var.private_app_subnet_az1_cidr
  private_app_subnet_az2_cidr  = var.private_app_subnet_az2_cidr
  private_data_subnet_az1_cidr = var.private_data_subnet_az1_cidr
  private_data_subnet_az2_cidr = var.private_data_subnet_az2_cidr

}