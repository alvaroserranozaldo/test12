module "vpc" {
  source = "./modules/vpc"
  resource_group_id  = "72860aa0928e43e5979bc8f33214234d"
}

module "subnet" {
  source = "./modules/subnet"
  vpc1_id = module.vpc.vpc1_id   
  vpc2_id = module.vpc.vpc2_id
  subnet1_cidr = module.subnet.subnet1_cidr
  subnet2_cidr = module.subnet.subnet2_cidr
  subnet3_cidr = module.subnet.subnet3_cidr
  subnet4_cidr = module.subnet.subnet4_cidr
  resource_group_id  = "72860aa0928e43e5979bc8f33214234d"
}
module "transit_gateway" {
  source     = "./modules/transit_gateway"
  gateway_name = "my_tg_gateway"
  location     = "eu-es"
  vpc1_crn      = module.vpc.vpc1_crn
  vpc2_crn      = module.vpc.vpc2_crn
  resource_group_id  = "72860aa0928e43e5979bc8f33214234d"

  depends_on = [module.vpc]
}
module "ssh_key" {
  source = "./modules/ssh_key"
}

module "vpc1_vsi" {
  source             = "./modules/vsi"
  vpc_id             = module.vpc.vpc1_id
  subnet_id          = module.subnet.subnet1_id
  zone               = "eu-es-1"
  instance_name      = "vsi-vpc1"
  image              = "ibm-centos-stream-9-amd64-8"
  instance_profile   = "bx2-2x8"
  ssh_keys           = module.ssh_key.ssh_keys
  resource_group_id  = "72860aa0928e43e5979bc8f33214234d"
}

module "vpc2_vsi" {
  source             = "./modules/vsi"
  vpc_id             = module.vpc.vpc2_id
  subnet_id          = module.subnet.subnet3_id
  zone               = "eu-es-2"
  instance_name      = "vsi-vpc2"
  image              = "ibm-centos-stream-9-amd64-8"
  instance_profile   = "bx2-2x8"
  ssh_keys           = module.ssh_key.ssh_keys
  resource_group_id  = "72860aa0928e43e5979bc8f33214234d"
}
