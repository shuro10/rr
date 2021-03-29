/* Cluster Defenition */
resource "aws_ecs_cluster" "cs-ecs-cluster" {
  name = "cs-ecs-cluster"
}

/* Front TaskDefinition */
resource "aws_ecs_task_definition" "cs-frontend-task" {
  family                   = "cs-frontend-task"
  cpu                      = "512"
  memory                   = "1024"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = file("./tasks/cs_frontend_definition.json")
  execution_role_arn       = module.ecs_task_execution_role.iam_role_arn
}



/* security group for ECS */
resource "aws_security_group" "cs-ecs-sg" {
  description = "ECS security group for cs"
  name        = "cs-ecs-sg"
  vpc_id      = aws_vpc.cs-vpc.id
}







/* ファミリーを指定するだけで、そのファミリーの最新のACTIVEリビジョンを見つけることができる */
data "aws_ecs_task_definition" "cs-frontend-task" {
  depends_on      = [aws_ecs_task_definition.cs-frontend-task]
  task_definition = aws_ecs_task_definition.cs-frontend-task.family
}


data "aws_iam_policy" "ecs_task_execution_role_policy" {
  arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}

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
