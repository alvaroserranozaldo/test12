terraform {
  required_providers {
    ibm = {
      source  = "ibm-cloud/ibm"
      version = "1.59.0" 
    }
  }
}
resource "ibm_is_vpc" "test-vpc1-wsn" {
  name = "test-vpc1-wsn"
  resource_group  = var.resource_group_id
}
resource "ibm_is_vpc_address_prefix" "vpc1_address_prefix" {
  name = "vpc1-address-prefix"
  zone = "eu-es-1" 
  vpc  = ibm_is_vpc.test-vpc1-wsn.id
  cidr = "10.240.0.0/18"
}
resource "ibm_is_vpc" "test-vpc2-wsn" {
  name = "test-vpc2-wsn"
  resource_group  = var.resource_group_id
}
resource "ibm_is_vpc_address_prefix" "vpc2_address_prefix" {
  name = "vpc2-address-prefix"
  zone = "eu-es-2"  
  vpc  = ibm_is_vpc.test-vpc2-wsn.id  
  cidr = "10.241.0.0/18"  
}