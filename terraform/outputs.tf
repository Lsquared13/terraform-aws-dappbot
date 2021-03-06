output "api_dns" {
  value = aws_api_gateway_domain_name.domain.domain_name
}

output "dapphub_dns" {
  value = local.dapphub_dns
}

output "dappbot_manager_dns" {
  value = local.dappbot_manager_dns
}

output "cloudfront_cert_arn" {
  value = local.wildcard_cert_arn
}

output "cognito_client_id" {
  value = aws_cognito_user_pool_client.api_client.id
}

output "cognito_user_pool_id" {
  value = aws_cognito_user_pool.registered_users.id
}

output "login_url" {
  value = "https://${aws_cognito_user_pool_domain.cognito_domain.domain}.auth.${var.aws_region}.amazoncognito.com/login?redirect_uri=${local.redirect_uri}&response_type=token&client_id=${aws_cognito_user_pool_client.api_client.id}"
}

