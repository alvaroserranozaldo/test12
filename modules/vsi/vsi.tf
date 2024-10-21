terraform {
  required_providers {
    ibm = {
      source  = "ibm-cloud/ibm"
      version = "1.59.0"
    }
  }
}

data "ibm_is_image" "centos" {
  name = "ibm-centos-stream-9-amd64-8" 
}
resource "ibm_is_instance" "vsi" {
  name              = var.instance_name
  profile           = var.instance_profile
  image             = data.ibm_is_image.centos.id
  vpc               = var.vpc_id
  zone              = var.zone
  resource_group  = var.resource_group_id
  primary_network_interface {
    subnet = var.subnet_id
  }
  keys = var.ssh_keys
}
