terraform {
  required_providers {
    ibm = {
      source  = "ibm-cloud/ibm"
      version = "1.59.0" 
    }
  }
}

resource "ibm_tg_gateway" "test_tg_gateway" {
  name     = var.gateway_name 
  location = var.location
  resource_group  = var.resource_group_id
}

resource "ibm_tg_connection" "test_ibm_tg_connection" {
  gateway      = ibm_tg_gateway.test_tg_gateway.id
  network_type = "vpc"
  network_id = var.vpc1_crn
  
  depends_on = [ibm_tg_gateway.test_tg_gateway]
}

resource "ibm_tg_connection" "test_ibm_tg_rgre_connection" {
  gateway      = ibm_tg_gateway.test_tg_gateway.id
  network_type = "vpc"
  network_id = var.vpc2_crn

  depends_on = [ibm_tg_gateway.test_tg_gateway]
}