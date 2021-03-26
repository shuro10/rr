/* Cluster Defenition */
resource "aws_ecs_cluster" "cs-ecs-cluster" {
  name = "cs-ecs-cluster"
}

/* Front TaskDefinition */
resource "aws_ecs_task_definition" "cs-front-task" {
  family                   = "cs-front-task"
  cpu                      = "512"
  memory                   = "1024"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = file("./tasks/cs_front_definition.json")
  execution_role_arn       = module.ecs_task_execution_role.iam_role_arn
}

/* Front ServiceDefinition */
resource "aws_ecs_service" "cs-front-ecs-service" {
  name                              = "cs-front-ecs-service"
  cluster                           = aws_ecs_cluster.cs-ecs-cluster.arn
  task_definition                   = "${aws_ecs_task_definition.cs-front-task.family}:${max("${aws_ecs_task_definition.cs-front-task.revision}", "${data.aws_ecs_task_definition.cs-front-task.revision}")}"
  desired_count                     = 1
  launch_type                       = "FARGATE"
  platform_version                  = "1.3.0"
  health_check_grace_period_seconds = 600

  network_configuration {
    assign_public_ip = true
    security_groups = [
      aws_security_group.cs-ecs-sg.id
    ]
    subnets = [
      aws_subnet.cs-front-1a.id,
      aws_subnet.cs-front-1c.id
    ]
  }

  load_balancer {
    target_group_arn = aws_lb_target_group.cs-alb-front-tg.arn
    container_name   = "front-container"
    container_port   = "80"
  }
}

/* Back TaskDefinition */
resource "aws_ecs_task_definition" "cs-back-task" {
  family                   = "cs-back-task"
  cpu                      = "256"
  memory                   = "512"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = file("./tasks/cs_back_definition.json")
  execution_role_arn       = module.ecs_task_execution_role.iam_role_arn
}

/* Back ServiceDefinition */
resource "aws_ecs_service" "cs-back-ecs-service" {
  name                              = "cs-back-ecs-service"
  cluster                           = aws_ecs_cluster.cs-ecs-cluster.arn
  task_definition                   = "${aws_ecs_task_definition.cs-back-task.family}:${max("${aws_ecs_task_definition.cs-back-task.revision}", "${data.aws_ecs_task_definition.cs-back-task.revision}")}"
  desired_count                     = 1
  launch_type                       = "FARGATE"
  platform_version                  = "1.3.0"
  health_check_grace_period_seconds = 600

  network_configuration {
    assign_public_ip = true
    security_groups = [
      aws_security_group.cs-ecs-sg.id
    ]
    subnets = [
      aws_subnet.cs-back-1a.id,
      aws_subnet.cs-back-1c.id
    ]
  }

  load_balancer {
    target_group_arn = aws_lb_target_group.cs-alb-back-tg.arn
    container_name   = "back-container"
    container_port   = "3000"
  }
}

/* Task for Migration */
resource "aws_ecs_task_definition" "db-migrate" {
  family                   = "cs-db-migrate"
  container_definitions    = file("./tasks/cs_db_migrate_definition.json")
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"
  execution_role_arn       = module.ecs_task_execution_role.iam_role_arn
}

/* ファミリーを指定するだけで、そのファミリーの最新のACTIVEリビジ
ョンを見つけることができる */
data "aws_ecs_task_definition" "cs-front-task" {
  depends_on      = [aws_ecs_task_definition.cs-front-task]
  task_definition = aws_ecs_task_definition.cs-front-task.family
}
data "aws_ecs_task_definition" "cs-back-task" {
  depends_on      = [aws_ecs_task_definition.cs-back-task]
  task_definition = aws_ecs_task_definition.cs-back-task.family
}

/* Reference AmazonECSTaskExecutionRolePolicy */
data "aws_iam_policy" "ecs_task_execution_role_policy" {
  arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}

/* PolicyDocument */
data "aws_iam_policy_document" "ecs_task_execution" {
  source_json = data.aws_iam_policy.ecs_task_execution_role_policy.policy

  statement {
    effect    = "Allow"
    actions   = ["ssm:GetParameters", "kms:Decrypt"]
    resources = ["*"]
  }
}

/* IAM Role */
module "ecs_task_execution_role" {
  source     = "./iam_role"
  name       = "ecs-task-execution"
  identifier = "ecs-tasks.amazonaws.com"
  policy     = data.aws_iam_policy_document.ecs_task_execution.json
}
