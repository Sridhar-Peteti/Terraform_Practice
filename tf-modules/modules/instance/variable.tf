variable "inst_ami_id" {
default = "ami-0f5e8a042c8bfcd5e"
}

variable "inst_type" {
default = "t2.micro"
}

variable "inst_name"{
type = list(string)
default = ["instance1", "instance2"]
}

variable "inst_ip" {
type = bool
default = true
}
