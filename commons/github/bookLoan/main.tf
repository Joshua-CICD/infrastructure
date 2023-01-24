
# Note: Set your GITHUB_TOKEN in your environment variables before running terraform apply
module "catalogue_ecr_repo" {
  source = "../../../modules/ecr_repo"
  repo_name = "catalogue"
}

module "catalogue_git_repo" {
  source = "../../../modules/github/python"
  name = "catalogue"
  token = var.token
  port = 5001
  ecr_repo = [module.catalogue_ecr_repo]
  namespace = "test"
}

module "member_ecr_repo" {
  source = "../../../modules/ecr_repo"
  repo_name = "member"
}

module "member_git_repo" {
  source = "../../../modules/github/python"
  name = "member"
  token = var.token
  port = 5001
  ecr_repo = [module.member_ecr_repo]
  namespace = "test"
}

module "loan_ecr_repo" {
  source = "../../../modules/ecr_repo"
  repo_name = "loan"
}

module "loan_git_repo" {
  source = "../../../modules/github/python"
  name = "loan"
  token = var.token
  port = 5001
  ecr_repo = [module.loan_ecr_repo]
  namespace = "test"
}

module "notifications_ecr_repo" {
  source = "../../../modules/ecr_repo"
  repo_name = "notifications"
}

module "notifications_git_repo" {
  source = "../../../modules/github/python"
  name = "notifications"
  token = var.token
  port = 5001
  ecr_repo = [module.notifications_ecr_repo]
  namespace = "test"
}