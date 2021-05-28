/* ===============ALB================ */
/* Frontend: ALB */
resource "aws_lb" "meetwithkids-frontend-alb" {
  name                       = "meetwithkids-frontend-alb"
  load_balancer_type         = "application"
  internal                   = false
  idle_timeout               = 60
  enable_deletion_protection = false

  subnets = [
    aws_subnet.meetwithkids-front-1a.id,
    aws_subnet.meetwithkids-front-1c.id
  ]

  security_groups = [
    aws_security_group.meetwithkids-alb-sg.id
  ]

  tags = {
    Name = "meetwithkids-frontend-alb"
  }
}

/* Backend: ALB */
resource "aws_lb" "meetwithkids-backend-alb" {
  name                          = "meetwithkids-backend-alb"
  load_balancer_type    = "application"
  internal                      = false
  idle_timeout               = 60
  enable_deletion_protection = false

  subnets = [
    aws_subnet.meetwithkids-back-1a.id,
    aws_subnet.meetwithkids-back-1c.id
  ]

  security_groups = [
    aws_security_group.meetwithkids-alb-sg.id
  ]

  tags = {
    Name = "meetwithkids-backend-alb"
  }
}


/* Frontend: Listener */
resource "aws_lb_listener" "meetwithkids-http-listener" {
  load_balancer_arn = aws_lb.meetwithkids-frontend-alb.arn
  port                    = "80"
  protocol              = "HTTP"

  default_action {
    type = "redirect"

    redirect {
      port              = "443"
      protocol        = "HTTPS"
      status_code   = "HTTP_301"
    }
  }
}
resource "aws_lb_listener" "meetwithkids-https-listener" {
  load_balancer_arn = aws_lb.meetwithkids-frontend-alb.arn
  port                  = "443"
  protocol            = "HTTPS"
  certificate_arn   = aws_acm_certificate.meetwithkids-frontend-acm.arn

  default_action {
    target_group_arn = aws_lb_target_group.meetwithkids-frontend-alb-tg.arn
    type             = "forward"
  }
}

/* Backend: Listener */
resource "aws_lb_listener" "meetwithkids-backend-http-listener" {
  load_balancer_arn = aws_lb.meetwithkids-backend-alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    target_group_arn = aws_lb_target_group.meetwithkids-backend-alb-tg.arn
    type             = "forward"

  # default_action {
  #   type = "redirect"

  #   redirect {
  #     port        = "443"
  #     protocol    = "HTTPS"
  #     status_code = "HTTP_301"
  #   }
  }
}

# resource "aws_lb_listener" "meetwithkids-backend-https-listener" {
#   load_balancer_arn = aws_lb.meetwithkids-backend-alb.arn
#   port              = "443"
#   protocol          = "HTTPS"
#   certificate_arn   = aws_acm_certificate.meetwithkids-backend-acm.arn

#   default_action {
#     target_group_arn = aws_lb_target_group.meetwithkids-backend-alb-tg.arn
#     type             = "forward"
#   }
# }


/* TargetGroup */
resource "aws_lb_target_group" "meetwithkids-frontend-alb-tg" {
  name        = "meetwithkids-frontend-alb-tg"
  target_type = "ip"
  vpc_id      = aws_vpc.meetwithkids-vpc.id
  port        = 80
  protocol    = "HTTP"

  health_check {
    enabled             = true
    path                = "/"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout     = 120
    interval        = 150
    matcher        = 200
    port              = 80
    protocol        = "HTTP"
  }
}

resource "aws_lb_target_group" "meetwithkids-backend-alb-tg" {
  name        = "meetwithkids-backend-alb-tg"
  target_type = "ip"
  vpc_id      = aws_vpc.meetwithkids-vpc.id
  port        = 80
  protocol    = "HTTP"

  health_check {
    enabled             = true
    interval            = 60
    path                = "/api/v1/health_check"
    port                = 3000
    protocol            = "HTTP"
    matcher             = 200
    timeout             = 50
    healthy_threshold   = 5
    unhealthy_threshold = 2
  }
}
