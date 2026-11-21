variable "resource_group_name" {
  type    = string
  default = "jk"
}

variable "location" {
  type    = string
  default = "centralindia"
}

variable "vm_name" {
  type    = string
  default = "vm-test"
}

variable "vm_size" {
  type    = string
  default = "Standard_B2als_v2"
}

variable "admin_username" {
  type    = string
  default = "azureuser"
}

# No default on purpose - never commit a password to Git.
variable "admin_password" {
  description = "Local admin password. Pass via TF_VAR_admin_password or a GitHub secret."
  type        = string
  sensitive   = true
}
