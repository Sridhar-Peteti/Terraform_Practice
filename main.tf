provider "aws" {
region = "us-east-1"
access_key = ""
secret_key = ""
}

resource "aws_iam_user" "usrkey" {
for_each = var.userslist
name = each.value
}

variable "userslist" {
type = set(string)
default = ["user1", "user2", "user3"]
}

resource "aws_iam_group" "grpkey" {
name = "test_dev"
}

resource "aws_iam_group_membership" "devteam" {
name = "devteam-group-membership"
for_each = var.userslist
users = [aws_iam_user.usrkey[each.value].name]
group = aws_iam_group.grpkey.name
}
