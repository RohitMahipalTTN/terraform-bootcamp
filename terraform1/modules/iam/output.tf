output "role_id" {
description = "ID of Role"
  value       = aws_iam_role.ec2_s3_access_role.id
}

output "role_arn" {
description = "Arn of Role"
  value       = aws_iam_role.ec2_s3_access_role.arn
}

output "role_create_date" {
description = "create date of Role"
  value       = aws_iam_role.ec2_s3_access_role.create_date
}
