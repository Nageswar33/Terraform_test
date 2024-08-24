resource "aws_instance" "instance"{
  ami = data.awi
  instance_type = data.instance_type
  vpc_security_group_ids = data.security_group

  tags = {
    Name = "test_1"
  }
}

output "aws_instance"{
  value = aws_instance.instance
}