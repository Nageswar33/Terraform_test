data "aws_ami" "Nag" {
  executable_users = ["self"]
  most_recent = true
  name_regex  = "Centos-*"
  owners = ["891377247566"]
}
