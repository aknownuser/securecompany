output "key" {
  value = aws_kms_key.thiskey
}

output "key_id" {
  value = aws_kms_key.thiskey.id
}