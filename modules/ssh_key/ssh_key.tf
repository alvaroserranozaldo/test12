terraform {
  required_providers {
    ibm = {
      source  = "ibm-cloud/ibm"
      version = "1.59.0"
    }
  }
}

resource "ibm_is_ssh_key" "ssh_key" {
  name       = "key1"  
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDCa47CvthlYREl3VN4mlml2YuNjJ4/ILcND7hCD9isZl2zo/U1lrBPKHs1IRkCEzZPFPgoAieknmTeL57YusERD1/mZxQ4X+eWbCy1UDOE24ElPv45zi1q14EblJilhEqQNP7KD9xXK8Wqy7/udiIaOV8d1BEiD0HhBIxbADHq80vg2cbjIHNf0Pq7q4VTkMw8L+z8yzOc6m1Vf2m3hUyuTCdNfNx+uZU5ZtDx0hd6UQYHwNPffqSguCRaSmXZPfKUgnPrR1kdWduKKCKc9OoW9+vhZIzOLQCeFnBDUuM60zfZ5ZXlpQENIGYgL9Knyw8xexfdSXxc6ZPJU4QJaUNRR9x3wrBe/s8yv+Xi6iX0/Rw71Gl0X/5lET4IyFadRI6OnwNPRIIf/ic3LIBLxmK5UJO5uL19NPktj2wi8J3Mfmw3GQNJ1i7nOxaEfi+UN2H5nIe1RbLIygAbECLsVlTwOuYGkcDLfAPZ0zDLTMowoXtCQJjvLCz165bxNThyJtc= azuread\\alvaroserranozaldo@IBM-PF31QPSR"
}
