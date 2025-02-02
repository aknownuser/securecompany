variable "env" {
  type        = string
  description = "Environment"
}
variable "suffix" {

  type        = string
  description = " Suffix of the S3 bucket"

}

variable "block_public_acls" {
  type        = bool
  default     = true
  description = "Block public ACLS"
}

variable "block_public_policy" {
  type        = bool
  default     = false
  description = "Block public policy"
}

variable "ignore_public_acls" {
  type        = bool
  default     = false
  description = "Ignore Public ACLS"
}

variable "restrict_public_bucket" {
  type        = bool
  default     = true
  description = "Restrict public bucket"
}
