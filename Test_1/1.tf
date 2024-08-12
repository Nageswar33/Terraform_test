resource "aws_instance" "Nag" {

  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-034a98c1bcbfe9aa0"]

  tags = {
    Name = "Nag1"
  }
}