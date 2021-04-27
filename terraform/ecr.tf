resource "aws_ecr_repository" "meetwithkids-frontend" {
  name                 = "meetwithkids-frontend"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
resource "aws_ecr_repository" "meetwithkids-backend" {
  name                 = "meetwithkids-backend"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
