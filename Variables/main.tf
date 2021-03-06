provider "aws" {
    region = "us-east-2"
}

variable "vpcname" {
    type    = string
    default = "myvpc"
}

variable "sshport" {
    type    = number
    default = 22
}

variable "enabled" {
    default = true
}

variable "mylist" {
    type    = list(string)
    default = ["Value0", "Value1", "Value2"] 
}

variable "mymap" {
    type    = map
    default = {
        key1 = "Value1"
        key2 = "Value2"
    }
}
#This is the only file to commit
variable "inputname" {
    type    = string
    description = "Set the name of the VPC"
    default = "inputname"
}


resource "aws_vpc" "myvpc" {
    cidr_block="10.0.0.0/16"

    tags = {
        Name = var.inputname
    }
}

output "vpcid" {
    value = aws_vpc.myvpc.id
}

variable "mytuple" {
    type = tuple([string, number, string])
    default = ["goat", 56, "cat"]
}

variable "myobject" {
    type = object ({ name = string, port = list(number)})
    default = {
      name = "JB"
      port = [ 22, 23, 445 ]
    }
}