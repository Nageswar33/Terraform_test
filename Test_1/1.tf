resource "aws_instance" "web" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-034a98c1bcbfe9aa0"]

  tags = {
    Name = "HelloWorld"
  }
}