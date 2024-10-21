
output "subnet1_id" {
  value = ibm_is_subnet.subnet1.id 
}

output "subnet2_id" {
  value = ibm_is_subnet.subnet2.id 
}

output "subnet3_id" {
  value = ibm_is_subnet.subnet3.id 
}

output "subnet4_id" {
  value = ibm_is_subnet.subnet4.id 
}

output "subnet1_cidr" {
  value = ibm_is_subnet.subnet1.ipv4_cidr_block
}

output "subnet2_cidr" {
  value = ibm_is_subnet.subnet2.ipv4_cidr_block
}

output "subnet3_cidr" {
  value = ibm_is_subnet.subnet3.ipv4_cidr_block
}

output "subnet4_cidr" {
  value = ibm_is_subnet.subnet4.ipv4_cidr_block
}