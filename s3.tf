module "lambda_builds_s3_bucket" {
  source  = "spacelift.io/iac-acn-demo/s3/aws"
  version = "v0.1.0"

  bucket_name                        = "${var.bucket_name_prefix}-${data.aws_caller_identity.current.account_id}"
  force_destroy                      = var.force_destroy
  kms_key_arn                        = local.kms_key
  versioning_enabled                 = var.versioning_enabled
  transition_standard_ia_days        = var.transition_standard_ia_days
  transition_onezone_ia_days         = var.transition_onezone_ia_days
  noncurrent_version_expiration_days = var.noncurrent_version_expiration_days

  tags = {
    Environment = "dev"
    ManagedBy   = "spacelift"
  }
}
