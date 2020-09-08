resource "aws_lambda_function" "this" {
  filename      = ".terraform/modules/lambda-function-credential-exfiltration/payload.zip"
  function_name = "test"
  role          = var.role_arn
  handler       = "index.handler"

  source_code_hash = filebase64sha256(".terraform/modules/lambda-function-credential-exfiltration/payload.zip")

  runtime = "nodejs12.x"
}

data "aws_lambda_invocation" "this" {
  function_name = aws_lambda_function.this.function_name

  input = <<JSON
  {
  }
  JSON

  depends_on = [aws_lambda_function.this]
}
