resource "aws_ecr_repository" "example" {
  name = "${var.repo_name}-${var.environment}"
}