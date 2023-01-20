# Note: Set your GITHUB_TOKEN in your environment variables before running terraform apply

# Image repositories
module "basic_python_microservice_repo" {
  source = "../../modules/github/python"
  name = "basic-python-microservice-repo"
  token = var.token
}