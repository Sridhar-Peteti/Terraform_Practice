variable "ami_id1" {
default = "ami-074dc0a6f6c764218"
}


variable  "inst1_type" {
default = "t2.micro"
}

variable "inst1_tags" {
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

variable "ami_id2" {
default = "ami-094125af156557ca2"
}


variable  "inst2_type" {
default = "t2.micro"
}

variable "inst2_tags" {
type = map(string)
default = {
Name = "sridhar"
environment = "test"
}
}

