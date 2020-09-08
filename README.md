# AWS Lambda Function Credential Exfiltration

![OffensiveTerraform](https://img.shields.io/badge/hack-success)
![OffensiveTerraform](https://img.shields.io/badge/offensive-terraform-blueviolet)
![OffensiveTerraform](https://img.shields.io/badge/aws-important)

Offensive Terraform module which creates Lambda function with existing IAM role. The module invokes it automatically to exfiltrate AWS temporary credential from environment variables and send it back with response.

![Attack Diagram](https://raw.githubusercontent.com/offensive-terraform/terraform-aws-lambda-function-credential-exfiltration/master/diagram.jpg)

## Usage
```
module "lambda-function-credential-exfiltration" {
    source  = "offensive-terraform/lambda-function-credential-exfiltration/aws"

    role_arn = "arn:aws:iam::000000000000:role/lambda-role-name"
}
```
## Author
Module managed by https://github.com/iganbold
