
data "aws_ami" "ami"{

}

resource "aws_instance" "instance"{
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group

  tags = {
     Name = "test_1"
  }
}

variable "ami"{ }
variable "instance_type" {}
variable "security_group" {}

output "result"{
  value = data.aws_ami
}
