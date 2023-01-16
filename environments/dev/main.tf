# Image repositories
module "frontend_repo" {
  source = "../../modules/ecr_repo"
  repo_name = "frontend"
  environment = var.environment
}

module "backend_repo" {
  source = "../../modules/ecr_repo"
  repo_name = "backend"
  environment = var.environment
}

# eks_cluster, elb, vpc, and subnets
module "eks_cluster" {
  source = "../../modules/eks_cluster"
  cluster_name = "${var.environment}-cluster"
  region = var.region
}