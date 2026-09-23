variable "encryption_key_arn" {
  type        = string
  description = "ARN for a KMS key that will encrypt the bucket. If not set, the shared KMS key is used"
  default     = null
}

variable "use_aws_managed_key" {
  type        = bool
  description = "Use AWS-managed keys. Should only be used in rare cases"
  default     = false
}


variable "bucket_name_prefix" {
  type        = string
  description = "Prefix for the S3 bucket name (account ID is appended automatically)"
  default     = "mdlz-lambdas-builds"
}

variable "force_destroy" {
  type        = bool
  description = "Allow bucket to be destroyed even if it contains objects"
  default     = false
}

variable "attach_deny_insecure_transport_policy" {
  type        = bool
  description = "Deny non-HTTPS access to the bucket"
  default     = true
}

variable "attach_require_latest_tls_policy" {
  type        = bool
  description = "Require latest TLS version for bucket access"
  default     = true
}

variable "versioning_enabled" {
  type        = bool
  description = "Enable versioning on the S3 bucket"
  default     = true
}

variable "transition_standard_ia_days" {
  type        = number
  description = "Days before noncurrent versions transition to STANDARD_IA"
  default     = 30
}

variable "transition_onezone_ia_days" {
  type        = number
  description = "Days before noncurrent versions transition to ONEZONE_IA"
  default     = 60
}

variable "noncurrent_version_expiration_days" {
  type        = number
  description = "Days before noncurrent versions are permanently deleted"
  default     = 90
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}