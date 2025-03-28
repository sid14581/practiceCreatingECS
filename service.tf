resource "aws_ecs_service" "my_first_services" {
  name                = var.first_service
  cluster             = aws_ecs_cluster.my_cluster.id
  task_definition     = aws_ecs_task_definition.my_first_task.arn
  launch_type         = "FARGATE"
  scheduling_strategy = "REPLICA"
  desired_count       = 1

  network_configuration {
    subnets          = [aws_default_subnet.sid_sub1.id]
    assign_public_ip = true
  }
}