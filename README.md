# 🚀 SecureCompany - A fake secure company! ✨

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Terraform](https://img.shields.io/badge/Terraform-%20-blue)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/AWS-%20-orange)](https://aws.amazon.com/)

**What is this for?** This is a SecureCompany, a set of modules and simple projects in the same directory intended to create an infrastructure securely.

## 🛠️  Modules

* **S3 Module:** Manages the creation and configuration of S3 buckets.
* **KMS Module:** Manages the creation and configuration of KMS keys.
* **Response Module:** Isolates EC2 instances and sets up necessary endpoints and IAM roles for secure management.

## 🧰 Prerequisites

* **Terraform:** Minimum required version is specified in the `.terraform.lock.hcl` file.
* **AWS Account:** With necessary permissions to deploy resources.
* **AWS CLI:** Configured with your AWS credentials.

## 🚀 Getting Started

1. **Clone the repository:**

   ```bash
   git clone [repository URL]

2. **Navigate to the desired module directory:**

    ```bash
    cd terraform/aws/dev/simple_storage

3. **Initialize Terraform:**

    ```bash
    terraform init

4. **Apply Terraform Configuration:**

    ```bash
    terraform apply

## 📂 Directory Structure

    ```
    .gitignore
    LICENSE
    README
    terraform/
        aws/
            dev/
                simple_storage/
                    locals.tf
                    main.tf
                    policies/
                        kms_policy.json
            modules/
                kms/
                    default.json
                    main.tf
                    output.tf
                    variables.tf
                response/
                    isolate_ec2/
                        endpoints.tf
                        main.tf
                        README
                        variables.tf
                s3/
                    main.tf
                    output.tf
                    variables.tf
    ```
