output "vpc1_crn" {
  value = ibm_is_vpc.test-vpc1-wsn.crn
}

output "vpc2_crn" {
  value = ibm_is_vpc.test-vpc2-wsn.crn
}


output "vpc1_id" {
  value = ibm_is_vpc.test-vpc1-wsn.id 
}

output "vpc2_id" {
  value = ibm_is_vpc.test-vpc2-wsn.id 
}
