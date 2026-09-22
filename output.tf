output "bucket_name" {
  value = aws_s3_bucket.prod_bucket.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.prod_bucket.arn
}