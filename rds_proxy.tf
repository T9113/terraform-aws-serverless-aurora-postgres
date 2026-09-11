resource "aws_db_proxy" "proxy" {
  name                   = "aurora-pg-proxy"
  engine_family          = "POSTGRESQL"
  role_arn               = aws_iam_role.proxy.arn
  vpc_subnet_ids         = var.subnet_ids
  require_tls            = true
  idle_client_timeout    = 1800
}
