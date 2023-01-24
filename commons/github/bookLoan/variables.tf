variable "repo_name" {
  type        = string
  description = "The name of the repo"
}

variable "token" {
  type        = string
  description = "Specifies the GitHub PAT token"
  sensitive   = true
}