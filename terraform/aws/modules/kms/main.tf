resource "aws_kms_key" "thiskey" {
    #KMS key generation, it can be either symmetric or asymmetric, based on the variable asymetric
    description = "A KMS key"
    customer_master_key_spec = var.asymetric ? "RSA_3072" : "SYMMETRIC_DEFAULT"
    key_usage = var.asymetric ? var.key_usage : "ENCRYPT_DECRYPT"
    enable_key_rotation = var.asymetric ? false : true
    deletion_window_in_days = 20

    tags = {
        Environment = var.env
    }
}

resource "aws_kms_key_policy" "key_policy" {
    key_id = aws_kms_key.thiskey.id
    policy = file(var.policy_path)
  
}