module "network" {
  source    = "./modules/network"
  namespace = local.namespace
}

#module "platform" {
#  source = ""
#
#  subnet = [
#    module.network.subnet["public_a"].id,
#    module.network.subnet["public_b"].id,
#  ]
#}