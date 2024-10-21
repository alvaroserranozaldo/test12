output "gateway_id" {
  value = ibm_tg_gateway.test_tg_gateway.id
}

output "connection_id" {
  value = ibm_tg_connection.test_ibm_tg_connection.id
}

output "rgre_connection_id" {
  value = ibm_tg_connection.test_ibm_tg_rgre_connection.id
}
