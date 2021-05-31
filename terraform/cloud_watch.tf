resource "aws_cloudwatch_log_group" "meetwithkids-ecs-back" {
  name              = "/ecs/backend"
  retention_in_days = 180
}
resource "aws_cloudwatch_log_group" "meetwithkids-ecs-front" {
  name              = "/ecs/frontend"
  retention_in_days = 180
}
resource "aws_cloudwatch_log_group" "meetwithkids-ecs-db-migrate" {
  name              = "/ecs/db-migrate"
  retention_in_days = 180
}
resource "aws_cloudwatch_log_group" "meetwithkids-ecs-db-seed" {
  name              = "/ecs/db-seed"
  retention_in_days = 180
}

