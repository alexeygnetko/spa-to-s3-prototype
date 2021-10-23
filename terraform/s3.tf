resource "aws_s3_bucket" "angular-and-s3-application" {
  bucket = "angular-and-s3-application.example.com"
  acl    = "public-read"

  website {
    index_document = "index.html"
  }
}