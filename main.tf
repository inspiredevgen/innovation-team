module "network" {
  source = "./dev/networking"
}

module "compute" {
  source           = "./dev/ec2"
  depends_on       = [module.network]
  public_subnet_id = module.network.private_subnet_id
  sg_ec2_id        = module.network.sg_ec2_id
}
