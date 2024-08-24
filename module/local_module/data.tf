
data "aws_ami" "ami"{
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group

}

resource "aws_instance" "instance"{
  ami = data.awi
  instance_type = data.instance_type
  vpc_security_group_ids = data.security_group

  tags = {
     Name = "test_1"
  }
}

variable "ami"{}
variable "instance_type" {}
variable "security_group" {}

output "result"{
  value = data.aws_ami.ami
}
