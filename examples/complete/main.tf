provider "aws" {
  region = var.region
}

data "aws_partition" "current" {}

module "tfstate_backend" {
  source               = "../.."
  region               = var.region
  bucket_prefix        = var.bucket_prefix
  dynamodb_table_name  = var.dynamodb_table_name
  versioning_enabled   = var.versioning_enabled
  admin_arns           = var.admin_arns
  permissions_boundary = var.permissions_boundary
  force_destroy        = var.force_destroy
}
