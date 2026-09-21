provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "poc_bucket" {
  bucket = var.bucket_name

  tags = {
    Environment = "poc"
    ManagedBy   = "spacelift"
  }
}

resource "aws_s3_bucket_versioning" "poc_bucket" {
  bucket = aws_s3_bucket.poc_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}