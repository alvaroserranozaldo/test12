output "ssh_keys" {
  value = [ibm_is_ssh_key.ssh_key.id] 
}