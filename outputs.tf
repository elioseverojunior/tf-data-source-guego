output "account_id" {
  value = data.aws_caller_identity.joao.account_id
}

output "caller_arn" {
  value = data.aws_caller_identity.joao.arn
}

output "caller_user" {
  value = data.aws_caller_identity.joao.user_id
}
