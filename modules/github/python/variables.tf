### Variables.tf ###
variable "token" {
  type        = string
  description = "Specifies the GitHub PAT token or `TF_VAR_GITHUB_TOKEN`"
  sensitive   = true
}

variable "name" {
  type        = string
  description = "The name of the repo"
}

variable "port" {
  type        = number
  description = "the port the service will run on"
}

variable "namespace" {
  type        = string
  description = "The namespace of the repo"
  default = "default"
}

variable "description" {
  type        = string
  description = "The description of the repo"
  default = "A new repository"
}

variable "ecr_repo" {
  # the value doesn't matter; we're just using this variable
  # to propagate dependencies.
  type    = any
  default = []
}