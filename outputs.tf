output "lambda_credential" {
  value = jsondecode(data.aws_lambda_invocation.this.result)
}
