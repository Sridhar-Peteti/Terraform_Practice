resource "aws_instance" "inst" {
ami = var.inst_ami_id
instance_type = var.inst_type
count = length(var.inst_name)
associate_public_ip_address = var.inst_ip
tags = {
Name = var.inst_name[count.index]
}
}


