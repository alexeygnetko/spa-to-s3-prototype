locals {
  bucket_name    = "spa-to-s3-prototype.example.com"
  spa_entrypoint = "index.html"
}

resource "aws_s3_bucket" "spa-to-s3-prototype" {
  bucket = local.bucket_name
  acl    = "public-read"

  website {
    index_document = local.spa_entrypoint
    error_document = local.spa_entrypoint
  }
}