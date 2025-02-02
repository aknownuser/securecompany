variable "policy_path" {
    description = "The path to the policy to be used in the key"
    type = string
}

variable "asymetric" {
    description = "Asymetric condition, if this is set to true the KMS will generate a Asymetric key"
    type = bool
    default = false
  
}

variable "key_usage" {
    description = "Usge giving to the key specified"
    type = string
    default = "ENCRYPT_DECRYPT"
}

variable "env" {
    type = string
    default = "Prod"
}
