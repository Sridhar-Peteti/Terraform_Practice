provider "aws" {
region = "us-east-1"
access_key = ""
secret_key = ""
}

resource "aws_iam_user" "usr1" {
name = "user1"
}

resource "aws_iam_user" "usr3" {
name = "user3"
}

resource "aws_iam_user" "usr2" {
name = "user2"
}

resource "aws_iam_group" "grpkey" {
name = "test_dev"
}

resource "aws_iam_group_membership" "devteam" {
name = "devteam-group-membership"
users = [ aws_iam_user.usr1.name, aws_iam_user.usr2.name, aws_iam_user.usr3.name ]
group = aws_iam_group.grpkey.name
}
