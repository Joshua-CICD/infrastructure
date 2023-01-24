# Image repositories
module "frontend_repo" {
  source = "../../modules/ecr_repo"
  repo_name = "frontend-dev"
}

module "backend_repo" {
  source = "../../modules/ecr_repo"
  repo_name = "backend-dev"
}

# eks_cluster, elb, vpc, and subnets
module "eks_cluster" {
  source = "../../modules/eks_cluster"
  cluster_name = "${var.environment}-cluster"
  region = var.region
}