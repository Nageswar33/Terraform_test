data "aws_ami" "Nag1" {
  executable_users = ["self"]
  most_recent = "true"
  name_regex  = "Cent*"
  owners = ["self"]

}
output "ami" {
  value = data.aws_ami.Nag1
}
