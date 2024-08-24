variable "ami"{
  default = "ami-0b4f379183e5706b9 "
}

variable "security_group"{
  default =[ "sg-0dd1b473651c96866" ]
}

variable "instance_type"{
  default = "t2.micro"
}

resource "aws_instance" "instance"{
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group

  tags = {
     Name = "test_1"
  }
}

output "result"{
  value = aws_instance.instance
}
