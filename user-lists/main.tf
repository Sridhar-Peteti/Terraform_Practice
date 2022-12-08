provider "aws" {
region = "us-east-2"
access_key = ""
secret_key = ""
}

resource "aws_iam_user" "usr" {
for_each = var.abc
name = each.value
}



variable "abc" {
type = set(string)
default  = ["user1", "user2", "user2"]
}

