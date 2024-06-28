output "website_url" {
  value = aws_cloudfront_distribution.website_distribution.domain_name
}

output "bucket_name" {
  value = aws_s3_bucket.static_website.id
}

output "zone_id" {
  value = aws_route53_zone.website_zone.zone_id
}

output "certificate_arn" {
  value = aws_acm_certificate.website_certificate.arn
}

