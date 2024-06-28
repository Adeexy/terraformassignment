variable "region" {
  default = "us-east-1"
}

variable "domain_name" {
  description = "The domain name for the website"
  type        = string
}

variable "bucket_name" {
  description = "The name of the S3 bucket for the website"
  type        = string
}

variable "cloudfront_origin_id" {
  description = "The origin ID for the CloudFront distribution"
  type        = string
  default     = "myS3Origin"
}

