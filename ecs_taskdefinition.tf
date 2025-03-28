resource "aws_ecs_task_definition" "my_first_task" {
  family                   = var.first_task
  container_definitions    = <<DEFINITION
[
  {
    "name": "my-first-task",
    "image": "${aws_ecr_repository.my_first_ecr_repo.repository_url}",
    "essential": true,
    "portMappings": [
      {
        "containerPort": 80,
        "hostPort": 80
      }
    ],
    "memory": 512,
    "cpu": 256,
    "networkMode": "awsvpc"
  }
]
  DEFINITION
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  memory                   = 512
  execution_role_arn       = aws_iam_role.ecstaskroleone.arn
  cpu                      = 256
}