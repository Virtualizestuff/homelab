locals {
  full_name = "${var.project}-${var.name}-${var.environment}"

  default_tags = {
    Project     = var.project
    Environment = var.environment
    Name        = local.full_name
  }

  merged_tags = merge(local.default_tags, var.extra_tags)
}


