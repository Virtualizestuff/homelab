locals {
  environment = basename(path.cwd)
}

module "naming" {
  source      = "../../modules/naming"
  name        = "blob"
  project     = "acme"
  environment = local.environment
  extra_tags = {
    Owner = "infra-team"
    BU = "database"
  }
}

module "az_blob" {
  source  = "../../modules/az_blob"
  context = module.naming.context
}