resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.static_website.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "index.html"
  }
}

resource "aws_s3_bucket_policy" "website_policy" {
  bucket = aws_s3_bucket.static_website.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "arn:aws:s3:::${var.bucket_name}/*"
      }
    ]
  })
}

resource "aws_s3_object" "website_files" {
  for_each = fileset("C:/Users/DevAde/Testassignment/htmlweb", "*")
  source   = "C:/Users/DevAde/Testassignment/htmlweb/${each.value}"
  bucket   = aws_s3_bucket.static_website.id
  key      = each.value
}
