module "components" {
  source = "./tf_module_vpc"

 for_each = var.vpc
 cidr = each.value["cidr"]
}
