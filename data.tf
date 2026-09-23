data "aws_kms_alias" "s3_key" {      
    name = "alias/s3-encryption-key"   
}

data "aws_caller_identity" "current" {

}
