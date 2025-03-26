
data "aws_iam_policy_document" "role_policy" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type = "Service"
      identifiers = [ "ecs-tasks.amazonaws.com" ]
    }
  }
}


resource "aws_iam_role" "ecsTaskExecutionRole" {
  name = var.ecsTaskExecutionRole

  assume_role_policy = data.aws_iam_policy_document.role_policy.json
}