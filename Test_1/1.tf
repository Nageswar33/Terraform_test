resource "aws_instance" "Nag2" {

  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-034a98c1bcbfe9aa0"]

  tags = {
    Name = "Nag2"
  }
}

data "aws_ami" "ami" {
  most_recent = true
 // name_regex  = "Cent*"
  owners = ["891377247566"]
}

output  "ami" {
  value = data.aws_ami.ami
}