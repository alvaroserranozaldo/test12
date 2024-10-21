variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet for the VSI"
  type        = string
}

variable "zone" {
  description = "Zone for the VSI and floating IP"
  type        = string
}

variable "instance_name" {
  description = "Name of the VSI"
  type        = string
}

variable "image" {
  description = "Image to use for the VSI"
  type        = string
}

variable "instance_profile" {
  description = "Profile for the VSI"
  type        = string
}

variable "ssh_keys" {
  description = "List of SSH key IDs"
  type        = list(string) 
}

variable "resource_group_id" {
  description = "The resource group where the subnets will be created"
  type        = string
}