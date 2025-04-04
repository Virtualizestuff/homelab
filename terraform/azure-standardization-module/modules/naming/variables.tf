variable "name" {
  description = "Base name for the resource"
  type        = string
}

variable "environment" {
  description = "Environment like dev/stage/prod"
  type        = string
}

variable "project" {
  description = "Project or team name"
  type        = string
}

variable "extra_tags" {
  description = "Additional tags to merge"
  type        = map(string)
  default     = {}
}
