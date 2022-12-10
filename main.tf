provider "aws" {
region = "us-east-1"
access_key = ""
secret_key = ""
}

resource "aws_s3_bucket" "keybkt" {
bucket = "aclsridharbucket"
}

resource "aws_s3_bucket_acl" "keyacl" {
bucket = "aclsridharbucket"
acl = "private"
}

resource "aws_s3_bucket_versioning" "keyver" {
bucket = "aclsridharbucket"
versioning_configuration  {
status = "Enabled"
}
}

