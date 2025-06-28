module "dev_securitygroup_create1" {
  source             = "../modules/security"
  vpc_id = module.dev_vpc_create1.vpc_id
  service_ports = var.service_ports
}