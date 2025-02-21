module "network-resources" {
  source = "./network-resources"
  vpc_id = module.network-resources.vpc_id
}

module "security-resources" {
  source = "./security-resources"
  vpc_id = module.network-resources.vpc_id
}

module "ec2-resources" {
  source            = "./ec2-resources"
  instance_type = "t2.small"
  vpc_id            = module.network-resources.vpc_id
  public_subnet_id  = module.network-resources.public_subnet_id
  security_group_id = module.security-resources.security_group_id
}
