output "s3_bucket_name" {
  value = aws_s3_bucket.spa-to-s3-prototype.bucket
}

output "s3_website_endpoint" {
  value = aws_s3_bucket.spa-to-s3-prototype.website_endpoint
}