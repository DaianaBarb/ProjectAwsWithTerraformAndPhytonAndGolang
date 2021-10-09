#https://www.youtube.com/watch?v=Lkm3v7UDlD8&ab_channel=JavaHomeCloud

resource "aws_iam_role_policy" "lambda_policy" {
  name = "lambda_policy"
  role = "${aws_iam_role.lambda_role.id}"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = "${file("lambda-policy.json")}"
 
}

resource "aws_iam_role" "lambda_role" {
  name = "lambda_role"

  assume_role_policy = "${file("lambda-assume-policy.json")}"

 
}