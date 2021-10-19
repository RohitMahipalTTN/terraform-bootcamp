resource "aws_iam_role" "ec2_s3_access_role" {
  name               = "s3-role"
  assume_role_policy = "${file("iam_role_policy.json")}"
}

resource "aws_iam_policy" "policy" {
  name        = "test-policy"
  description = "A test policy"
  policy      = "${file("iam_policy_s3_bucket.json")}"
}

resource "aws_iam_policy_attachment" "test-attach" {
  name       = "test-attachment"
  roles      = [aws_iam_role.ec2_s3_access_role.name]
  policy_arn = aws_iam_policy.policy.arn
}

resource "aws_iam_instance_profile" "test_profile" {
  name  = "test_profile"
  role = aws_iam_role.ec2_s3_access_role.name
}

