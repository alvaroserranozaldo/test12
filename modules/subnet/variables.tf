variable "vpc1_id" {
  description = " vpc1 id"
  type        = string
}

variable "vpc2_id" {
  description = "vpc2 id"
  type        = string
}
variable "subnet1_cidr" {
  description = "CIDR block for Subnet 1"
  type        = string
}

variable "subnet2_cidr" {
  description = "CIDR block for Subnet 2"
  type        = string
}

variable "subnet3_cidr" {
  description = "CIDR block for Subnet 3"
  type        = string
}

variable "subnet4_cidr" {
  description = "CIDR block for Subnet 4"
  type        = string
}
variable "resource_group_id" {
  description = "The resource group where the subnets will be created"
  type        = string
}