
output "access_keys" {
    description = "Users access keys"
    sensitive = true
    value = aws_iam_access_key.access_keys
}
