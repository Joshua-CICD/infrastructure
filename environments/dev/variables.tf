variable "environment" {
    default = "dev"
    description = "The environment for which the repository is created"
}

variable "region" {
  default = "us-east-1"
  description = "The AWS region where the resources will be created"
}