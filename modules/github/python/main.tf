### Main.tf ###
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
    }
  }
}

provider "github" {
  token = var.token # or `GITHUB_TOKEN`
  owner = "Joshua-CICD"
}

#Create and initialise a public GitHub Repository with MIT license and a Visual Studio .gitignore file (incl. issues and wiki)
resource "github_repository" "repo" {
  name               = var.name
  description        = var.description
  visibility         = "public"
  has_issues         = true
  has_wiki           = true
  auto_init          = true
  license_template   = "mit"
}

#Set default branch 'master'
resource "github_branch_default" "main" {
  repository = github_repository.repo.name
  branch     = "main"
}

resource "github_repository_file" "githubActionsFile" {
  repository = var.name
  file  = ".github/workflows/example.yml"
  content    = file("${path.module}/templatedFiles/.github/workflows/main.yml")
  commit_message = "Add file from local file"
  branch = "main"
  overwrite_on_create = true
  depends_on = [github_repository.repo]
}

resource "github_repository_file" "tests" {
  repository = var.name
  file  = "tests/test_health.py"
  content    = file("${path.module}/templatedFiles/tests/test_health.py")
  commit_message = "Add file from local file"
  branch = "main"
  overwrite_on_create = true
  depends_on = [github_repository.repo]
}

resource "github_repository_file" "tests_init" {
  repository = var.name
  file  = "tests/__init__.py"
  content    = file("${path.module}/templatedFiles/tests/__init__.py")
  commit_message = "Add file from local file"
  branch = "main"
  overwrite_on_create = true
  depends_on = [github_repository.repo]
}

resource "github_repository_file" "init" {
  repository = var.name
  file  = "__init__.py"
  content    = file("${path.module}/templatedFiles/__init__.py")
  commit_message = "Add file from local file"
  branch = "main"
  overwrite_on_create = true
  depends_on = [github_repository.repo]
}

resource "github_repository_file" "gitignore" {
  repository = var.name
  file  = ".gitignore"
  content    = file("${path.module}/templatedFiles/.gitignore")
  commit_message = "Add file from local file"
  branch = "main"
  overwrite_on_create = true
  depends_on = [github_repository.repo]
}

resource "github_repository_file" "app" {
  repository = var.name
  file  = "app.py"
  content    = file("${path.module}/templatedFiles/app.py")
  commit_message = "Add file from local file"
  branch = "main"
  overwrite_on_create = true
  depends_on = [github_repository.repo]
}

resource "github_repository_file" "requirements" {
  repository = var.name
  file  = "requirements.txt"
  content    = file("${path.module}/templatedFiles/requirements.txt")
  commit_message = "Add file from local file"
  branch = "main"
  overwrite_on_create = true
  depends_on = [github_repository.repo]
}