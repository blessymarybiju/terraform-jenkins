variable "resource_group_name" {
  type    = string
  default = "myResourceGroup"
}

variable "location" {
  type    = string
  default = "East US"
}

variable "role_name" {
  type    = string
  default = "myCustomRole"
}

variable "policy_name" {
  type    = string
  default = "myCustomPolicy"
}
