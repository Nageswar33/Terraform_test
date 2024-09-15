module "components" {
  sounrce = "https://github.com/Nageswar33/tf_module_vpc.git"

 for_each = var.vpc
 cidr = each.value["cidr"]
}
