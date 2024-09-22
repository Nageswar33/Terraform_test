module "vpc" {
  source = "git::https://github.com/Nageswar33/tf_module_vpc.git"

  for_each = var.vpc
  cidr = each.value["cidr"]
  subnets = each.value["subnets"]
  default_vpc_id = var.default_vpc_id
  default_cidr = var.default_cidr
  default_vpc_route_table_id = var.default_vpc_route_table_id
}

output "vpc"{
  value = module.vpc
}

