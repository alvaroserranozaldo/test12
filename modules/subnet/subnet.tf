terraform {
  required_providers {
    ibm = {
      source  = "ibm-cloud/ibm"
      version = "1.59.0"
    }
  }
}
resource "ibm_is_subnet" "subnet1" {
  name             = "vpc1-test-sn1"
  vpc              = var.vpc1_id
  zone             = "eu-es-1"
  ipv4_cidr_block  = "10.240.16.0/20"
  resource_group  = var.resource_group_id    
}
resource "ibm_is_subnet" "subnet2" {
  name             = "vpc1-test-sn2"
  vpc              = var.vpc1_id
  zone             = "eu-es-1"
  ipv4_cidr_block  = "10.240.32.0/20"
  resource_group  = var.resource_group_id  
}

resource "ibm_is_subnet" "subnet3" {
  name             = "vpc2-test-sn1"
  vpc              = var.vpc2_id
  zone             = "eu-es-2"
  ipv4_cidr_block  = "10.241.16.0/20"
  resource_group  = var.resource_group_id  
}

resource "ibm_is_subnet" "subnet4" {
  name             = "vpc2-test-sn2"
  vpc              = var.vpc2_id
  zone             = "eu-es-2"
  ipv4_cidr_block  = "10.241.32.0/20"
  resource_group  = var.resource_group_id   
}