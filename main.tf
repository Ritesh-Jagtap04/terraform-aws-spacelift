provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "prod_bucket" {
  bucket = var.bucket_name

  tags = {
    Environment = "Prod"
    ManagedBy   = "spacelift"
  }
}

resource "aws_s3_bucket_versioning" "prod_bucket" {
  bucket = aws_s3_bucket.prod_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}