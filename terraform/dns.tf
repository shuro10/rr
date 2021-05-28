/* ===============route53================ */
/* Frontend: DetasourceDefinition of HostZone */
resource "aws_route53_zone" "meetwithkids-zone" {
  name = "meetwithkids.org"
  tags = {
    "meetwithkids" = "meetwithkids.org" 
  }
}
/* Backend: DetasourceDefinition of HostZone */
resource "aws_route53_zone" "meetwithkids-host-zone" {
  name    = "rinrei720.com"
  comment = "rinrei720.com host zone"
}

/* Frontend: Definition of DNS Record of ALB */
resource "aws_route53_record" "meetwithkids-zone-record" {
  zone_id = aws_route53_zone.meetwithkids-zone.id
  name = aws_route53_zone.meetwithkids-zone.name
  type = "A"

  alias {
    name = aws_lb.meetwithkids-frontend-alb.dns_name
    zone_id = aws_lb.meetwithkids-frontend-alb.zone_id
    evaluate_target_health = true
  }
}

/* Backend: Definition of DNS Record of ALB */
resource "aws_route53_record" "meetwithkids-host-zone-record" {
  zone_id = aws_route53_zone.meetwithkids-host-zone.zone_id
  name    = aws_route53_zone.meetwithkids-host-zone.name
  type    = "A"

  alias {
    name                   = aws_lb.meetwithkids-backend-alb.dns_name
    zone_id                = aws_lb.meetwithkids-backend-alb.zone_id
    evaluate_target_health = true
  }
}
/* ===============route53================ */



/* =================ACM=================== */
/* Definition of SSL証明書 */

/* Frontend: Definition of SSL証明書 */
resource "aws_acm_certificate" "meetwithkids-frontend-acm" {
  domain_name               = aws_route53_record.meetwithkids-zone-record.name
  subject_alternative_names = ["*.meetwithkids.org",]
  validation_method         = "DNS"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    "Name" = "Frontend: meetwithkids.org"
  }
}

/* Backend: Definition of SSL証明書 */
# resource "aws_acm_certificate" "meetwithkids-backend-acm" {
#   domain_name               = aws_route53_record.meetwithkids-host-zone-record.name
#   subject_alternative_names = []
#   validation_method         = "DNS"

#   lifecycle {
#     create_before_destroy = true
#   }
#   tags = {
#     "Name" = "Backend: rinrei720.com"
#   }
# }

/* Definition of Record for ValidationOfSSL証明書 */
# resource "aws_route53_record" "meetwithkids-certificate" {
#   name    = tolist(aws_acm_certificate.meetwithkids-backend-acm.domain_validation_options)[0].resource_record_name
#   type    = tolist(aws_acm_certificate.meetwithkids-backend-acm.domain_validation_options)[0].resource_record_type
#   records = [tolist(aws_acm_certificate.meetwithkids-backend-acm.domain_validation_options)[0].resource_record_value]
#   zone_id = aws_route53_zone.meetwithkids-host-zone.id
#   ttl     = 60
# }

/* Waiting for FinishOfValidation */
# resource "aws_acm_certificate_validation" "meetwithkids-backend-acm" {
#   certificate_arn         = aws_acm_certificate.meetwithkids-backend-acm.arn
#   validation_record_fqdns = [aws_route53_record.meetwithkids-certificate.fqdn]
# }

/* ========================================== */
