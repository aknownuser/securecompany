
provider "aws" {
  region = "us-east-1"
}


module "s3_bucket" {
  source = "../../modules/s3"
  suffix = local.suffix
  env = local.env
}

module "kms" {
  source = "../../modules/kms"
  policy_path = local.policy_path
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encryption_config" {
  bucket = module.s3_bucket.s3_id
  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = module.kms.key_id
      sse_algorithm = "aws:kms"
    }
  }
}