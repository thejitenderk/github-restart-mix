resource_group_name = "rg-aks-dev"
location            = "East US"
acr_name            = "acraksdev123"
cluster_name        = "aks-dev-cluster"
dns_prefix          = "aksdev"
node_count          = 2
vm_size             = "Standard_DS2_v2"
tags = {
  environment = "dev"
  project     = "aks-restart"
}
