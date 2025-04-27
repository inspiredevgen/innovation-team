# module "networking" {
#   source = "./dev/networking"
# }

# module "compute" {
#   source     = "./dev/compute"
#   depends_on = [module.networking]
# }

module "uat_networking" {
  source = "./uat/1-networking"
}
