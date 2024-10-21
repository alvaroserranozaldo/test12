variable "gateway_name" {
  description = "name of the transit"
  type        = string
}

variable "location" {
  description = "location of the transit"
  type        = string
}

variable "vpc1_crn" {
  description = "crn of vpc1"
  type        = string
}

variable "vpc2_crn" {
  description = "crn of vpc2"
  type        = string
}
variable "resource_group_id" {
  description = "The resource group where the subnets will be created"
  type        = string
}