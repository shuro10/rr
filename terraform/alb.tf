/* ===============ALB================ */
/* Frontend: ALB */
resource "aws_lb" "cs-frontend-alb" {
  name                       = "cs-frontend-alb"
  load_balancer_type         = "application"
  internal                   = false
  idle_timeout               = 60
  enable_deletion_protection = false

  subnets = [
    aws_subnet.cs-front-1a.id,
    aws_subnet.cs-front-1c.id
  ]

  security_groups = [
    aws_security_group.cs-alb-sg.id
  ]

  tags = {
    Name = "cs-frontend-alb"
  }
}

/* Backend: ALB */
resource "aws_lb" "cs-backend-alb" {
  name                          = "cs-backend-alb"
  load_balancer_type    = "application"
  internal                      = false
  idle_timeout               = 60
  enable_deletion_protection = false

  subnets = [
    aws_subnet.cs-back-1a.id,
    aws_subnet.cs-back-1c.id
  ]

  security_groups = [
    aws_security_group.cs-alb-sg.id
  ]

  tags = {
    Name = "cs-backend-alb"
  }
}
