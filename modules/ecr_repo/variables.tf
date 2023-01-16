variable "repo_name" {
  description = "The name of the ECR repository, without the environment suffix"
}

variable "environment" {
  description = "The environment for which the repository is created"
}