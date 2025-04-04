output "name" {
  value = local.full_name
}

output "tags" {
  value = local.merged_tags
}

output "context" {
  value = {
    name        = local.full_name
    tags        = local.merged_tags
    project     = var.project
    environment = var.environment
  }
}