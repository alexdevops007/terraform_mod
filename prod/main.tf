provider "aws" {
  region  = "us-east-1"
  profile = "terraform-user"
}

terraform {
  backend "s3" {
    bucket  = "terraform-backend-xander"
    key     = "build/prod/alex.tfstate"
    region  = "us-east-1"
    profile = "terraform-user"
  }
}

module "ec2" {
  source = "../modules/ec2-module"
  aws_common_tag = var.aws_common_tag
  instancetype = var.instancetype
  sg_name = var.sg_name
}