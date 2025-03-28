resource "aws_ecr_repository" "demo_repo" {
  name = var.first_repo
  tags = {
    name = "yo_ecr"
  }
}