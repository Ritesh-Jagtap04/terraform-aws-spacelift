locals {
  kms_key = coalesce(var.encryption_key_arn, data.aws_kms_alias.s3_key.target_key_arn)
}