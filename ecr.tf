resource "aws_ecr_repository" "my_first_ecr_repo" {
  name = var.first_repo
  tags = {
    name = "yo_ecr"
  }
}