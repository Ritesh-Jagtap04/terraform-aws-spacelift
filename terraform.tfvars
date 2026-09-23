# ── Bucket Identity ──────────────────────────────────────────
bucket_name_prefix = "mdlz-lambdas-builds"

# ── Safety ───────────────────────────────────────────────────
force_destroy = true   # set false in production

# ── Security Policies ────────────────────────────────────────
attach_deny_insecure_transport_policy = true
attach_require_latest_tls_policy      = true

# ── Versioning ───────────────────────────────────────────────
versioning_enabled = true

# ── Lifecycle (days) ─────────────────────────────────────────
transition_standard_ia_days        = 30
transition_onezone_ia_days         = 60
noncurrent_version_expiration_days = 90

# ── Encryption ───────────────────────────────────────────────
use_aws_managed_key = false
encryption_key_arn  = "arn:aws:kms:us-east-1:945782546865:key/c3ed2b78-0c50-4e63-bf9b-e55995bab342"
