module "network" {
  source = "./dev/networking"
}

module "compute" {
  source     = "./dev/ec2"
  depends_on = [module.network]
}
