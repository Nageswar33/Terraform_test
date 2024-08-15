variable "ami" {
  default = "ami-0b4f379183e5706b9"
}
variable "security_groups" {
  default = [ "sg-034a98c1bcbfe9aa0" ]
}

variable "instance_type" {
  default = "t2.micro"
}

variable "components"{
  default = {
    frontend = { name ="frontend" }
    mongodb = { name ="mongodb" }
    mysql = { name ="mysql" }
    rebbitmq = { name ="rebbitmq" }
  }
}

resource "aws_instance" "instance" {

  for_each = var.components
   ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = lookup(each.value , "name",null)
  }
}
