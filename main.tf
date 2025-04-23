module "networking" {
  source = "./dev/networking"
}

module "compute" {
  source     = "./dev/compute"
  depends_on = [module.networking]
}
