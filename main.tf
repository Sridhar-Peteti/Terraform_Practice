provider "aws" {
region = "us-west-2"
access_key = ""
secret_key = ""
}

resource "aws_instance" "inst1" {
ami = "ami-0ecc74eca1d66d8a6"
instance_type = "t2.micro"
tags = {
Name = "terraform_cofig_1"
}
}

resource "aws_instance" "inst2" {
ami =  "ami-094125af156557ca2"
instance_type = "t2.micro"
tags = {
Name = "terraform_cofig_2"
}
}
