terraform {
  backend "s3" {
    bucket = "joshua-cicd-terraform"
    key    = "global/s3/terraform.tfstate"
    region = "ca-central-1"
  }
}
