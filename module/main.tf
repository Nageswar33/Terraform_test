module "test" {
  source = "./local_module"
  instance_type = var.instance_type
  ami = var.ami
  security_group = var.security_group
}

output "result"{
  value = module.test
}

variable "ami"{
  default = "ami-0b4f379183e5706b9"
}

variable "security_group"{
  default =[ "sg-0dd1b473651c96866" ]
}

variable "instance_type"{
  default = "t2.micro"
}