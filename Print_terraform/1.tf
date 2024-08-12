data "aws_ami" "ami" {
  most_recent = " true "
  name_regex  = "Cent*"
  owners = ["891377247566"]
}

 output  "ami" {
     value = data.aws_ami.ami
   }
