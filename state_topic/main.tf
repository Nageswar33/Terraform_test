terraform {
  backend "s3" {
    bucket = "nageswar-bucket-1"
    key    = "state_topic/terraform.tfstate"
    region = "us-east-1"
  }
}

variable "test"{
  default = "Hello Nageswara Rao"
}

output "test"{
  value = var.test
}