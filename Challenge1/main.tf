provider "aws" {
    region = "us-east-2"
}

variable "inputname" {
    type = string
    default = "TerraformVPC"  
}

resource "aws_vpc" "myvpc" {
    cidr_block="192.168.0.0/24"

    tags = {
        Name = var.inputname
    }
}