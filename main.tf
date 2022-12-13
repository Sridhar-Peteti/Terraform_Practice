provider "aws" {
region = "us-east-2"
access_key = ""
secret_key = ""
}

resource "aws_vpc" "vpckey" {
cidr_block =  "10.0.0.0/16"
tags = {
Name = "terra_vpc"
}
}


resource "aws_subnet" "snkey" {
cidr_block = "10.0.0.0/24"
tags = {
Name = "terrs_SN"
}
vpc_id = aws_vpc.vpckey.id
}
