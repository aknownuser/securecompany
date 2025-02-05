# Isolate EC2 Module

This module is designed to isolate an EC2 instance within a VPC and set up the necessary AWS Systems Manager (SSM) endpoints and IAM roles for secure management.

## Features

- Creates an isolated VPC with a limited CIDR block.
- Sets up VPC endpoints for SSM, SSM messages, and EC2 messages.
- Configures IAM roles and policies for SSM Run Command.
- Creates a snapshot of EBS volume of the infected EC2 instance
- Creates a new EC2 instance with forensics AMI and attaches an EBS volume created from the snapshot

## Prerequisites

- **Terraform:** Ensure you have Terraform installed.
- **AWS Account:** With necessary permissions to deploy resources.
- **AWS CLI:** Configured with your AWS credentials.

## Usage

```hcl
module "isolate_ec2" {
  source = "path/to/response/isolate_ec2"

  region = "eu-south-2"
} ```