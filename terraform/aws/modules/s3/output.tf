output "s3_id" {
  value = aws_s3_bucket.s3_bucket.id
}

output "s3_arn" {
  value = aws_s3_bucket.s3_bucket.arn
}

output "s3" {
  value = aws_s3_bucket.s3_bucket
}