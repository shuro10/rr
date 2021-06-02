resource "aws_s3_bucket" "meetwithkids-s3-bucket" {
  bucket = "meetwithkids-s3-bucket-for-images"
  acl    = "public-read"

  tags = {
    Name = "meetwithkids-s3-bucket-for-images"
  }
}


# resource "aws_s3_bucket" "meetwithkids-s3-bucket" {
#   bucket = "meetwithkids-s3-bucket-for-images"
#   acl    = "public-read-write"

#   tags = {
#     Name = "meetwithkids-s3-bucket-for-images"
#   }

#   cors_rule {
#     allowed_headers = ["*"]
#     allowed_methods = ["GET", "POST", "PUT", "DELETE", "HEAD"]
#     allowed_origins = ["https://rinrei720.com", "https://meetwithkids.org", "http://rinrei720.com", "http://meetwithkids.org"]
#     expose_headers  = ["access-token", "uid", "client", "token-type", "expiry"]
#     max_age_seconds = 3000
#   }

# }


resource "aws_s3_bucket" "meetwithkids-alb-log" {
  bucket = "artifact-terraform-for-meetwithkids"

  lifecycle_rule {
    enabled = true

    expiration {
      days = "180"
    }
  }
}
