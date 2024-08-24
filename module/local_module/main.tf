resource "aws_instance" "instance"{
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group

  tags = {
    Name = "test_1"
  }
}

output "aws_instance"{
  value = aws_instance.instance
}