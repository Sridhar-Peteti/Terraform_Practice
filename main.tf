resource "aws_instance" "key_inst" {
ami = var.ami_id
instance_type = var.inst_type
tags = var.inst_tags
associate_public_ip_address = var.inst_ip
}

resource "aws_iam_user" "key_usr" {
name = var.inst_usr_name
}

resource "aws_iam_group" "key_grp"{
name = var.inst_grp_name
}

