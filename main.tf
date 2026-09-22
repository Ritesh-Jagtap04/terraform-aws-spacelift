provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "dev_bucket" {
  bucket = var.bucket_name

  tags = {
    Environment = "int"
    ManagedBy   = "spacelift"
  }
}

resource "aws_s3_bucket_versioning" "dev_bucket" {
  bucket = aws_s3_bucket.dev_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}