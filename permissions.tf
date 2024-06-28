resource "aws_iam_role" "cloudfront_role" {
  name = "cloudfront_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action    = "sts:AssumeRole"
      Effect    = "Allow"
      Principal = {
        Service = "cloudfront.amazonaws.com"
      }
    }]
  })

  tags = {
    Name = "CloudFront Role"
  }
}

resource "aws_iam_role_policy" "cloudfront_policy" {
  name = "cloudfront_policy"
  role = aws_iam_role.cloudfront_role.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Action = "s3:GetObject"
      Resource = "arn:aws:s3:::${aws_s3_bucket.static_website.id}/*"
    }]
  })
}
