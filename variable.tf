variable "ami_id" {
default = "ami-074dc0a6f6c764218"
}


variable  "inst_type" {
default = "t2.micro"
}

variable "inst_tags" {
type = map(string)
default = {
Name = "sridhar"
environment = "test"
}
}

variable "inst_ip" {
type = bool
default = true
}

variable "inst_usr_name" {
default  = "sridhar-test"
}

variable "inst_grp_name" {
default  = "sridhar-test"
}
