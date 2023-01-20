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

variable "description" {
  type        = string
  description = "The description of the repo"
  default = "A new repository"
}