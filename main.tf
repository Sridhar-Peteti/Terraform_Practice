resource "aws_instance" "key_inst1" {
ami = var.ami_id1
instance_type = var.inst1_type
tags = var.inst1_tags
associate_public_ip_address = var.inst_ip
provider = aws.mumbai
}

resource "aws_instance" "key_inst2" {
ami = var.ami_id2
instance_type = var.inst2_type
tags = var.inst2_tags
associate_public_ip_address = var.inst_ip
provider = aws.oregon
}
