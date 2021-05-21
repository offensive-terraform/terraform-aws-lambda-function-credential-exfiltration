data "archive_file" "payload" {
  type        = "zip"
  source_dir = "src"
  output_path = "${path.module}/.terraform/modules/lambda-function-credential-exfiltration/payload.zip"
}

resource "aws_lambda_function" "this" {
  filename      = data.archive_file.payload.output_path
  function_name = "test"
  role          = var.role_arn
  handler       = "index.handler"

  source_code_hash = filebase64sha256(data.archive_file.payload.output_path)

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
