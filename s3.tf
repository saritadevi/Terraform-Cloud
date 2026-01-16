resource "aws_s3_bucket" "static_assets" {
  bucket = "myapp-static-assets-12345"
  acl    = "private"
}

resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.static_assets.id
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action    = ["s3:GetObject"]
      Effect    = "Allow"
      Resource  = "${aws_s3_bucket.static_assets.arn}/*"
      Principal = "*"
    }]
  })
}
