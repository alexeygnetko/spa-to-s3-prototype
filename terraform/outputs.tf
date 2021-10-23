output "s3_bucket_name" {
  value = aws_s3_bucket.angular-and-s3-application.bucket
}

output "s3_website_endpoint" {
  value = aws_s3_bucket.angular-and-s3-application.website_endpoint
}