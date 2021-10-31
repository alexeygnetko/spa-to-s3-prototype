resource "aws_s3_bucket" "spa-to-s3-prototype" {
  bucket = "spa-to-s3-prototype.example.com"
  acl    = "public-read"

  website {
    index_document = "index.html"
  }
}