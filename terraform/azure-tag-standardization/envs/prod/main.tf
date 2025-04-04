locals {
  environment = basename(path.cwd)
}

module "tags" {
  source      = "../../modules/tags"
  name        = "blob"
  project     = "acme"
  environment = local.environment
  extra_tags = {
    Owner = "infra-team"
    BU = "database"
  }
}

module "az-blob" {
  source  = "../../modules/az-blob"
  context = module.tags.context
}