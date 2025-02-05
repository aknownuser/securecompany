variable "region" {
    description = "Region name"
    type = string
    default = "eu-south-2"
}

variable target_ebs_volume_id {
    description = "EBS Volume ID to a take a snapshot of "
    type = string
}

variable "forensics_ami_id" {
    description = "AMI ID for the forensics instance"
    type = string
  
}

variable "availability_zone" {
    description = "Availability zone"
    type = string
    default = "eu-south-2a"
  
}