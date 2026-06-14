variable "cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the cluster"
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the default pool"
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "The size of the virtual machines in the default pool"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
