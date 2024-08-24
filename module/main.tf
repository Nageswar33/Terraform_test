module "test" {
  source = "./local_module"

}

output "result"{
  value = module.test
}

