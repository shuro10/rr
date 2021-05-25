resource "aws_s3_bucket" "meetwithkids-s3-bucket" {
  bucket = "meetwithkids-s3-bucket-for-images"
  acl    = "public-read"

  tags = {
    Name = "meetwithkids-s3-bucket-for-images"
  }
}

resource "aws_s3_bucket" "meetwithkids-alb-log" {
  bucket = "artifact-terraform-for-meetwithkids"

  lifecycle_rule {
    enabled = true

    expiration {
      days = "180"
    }
  }
}
