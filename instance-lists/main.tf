provider "aws" {
region = "us-east-2"
ccess_key = ""
secret_key = ""
}

resource "aws_instance" "inst" {
ami= var.ami_id
instance_type = var.inst_type
for_each = var.inst_name
tags = {
Name = each.value
}
}

variable "ami_id" {
default = "ami-0beaa649c482330f7"
}
variable "inst_type"{
default = "t2.micro"
}

variable "inst_name" {
type = set(string)
default  = ["instance1", "instance2", "instance2"]
}
