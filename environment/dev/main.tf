module "resource_group" {
  source              = "../../modules/resourceGroup"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

module "acr" {
  source              = "../../modules/acr"
  acr_name            = var.acr_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  sku                 = "Standard"
  tags                = var.tags
}

module "aks" {
  source              = "../../modules/aks"
  cluster_name        = var.cluster_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  dns_prefix          = var.dns_prefix
  node_count          = var.node_count
  vm_size             = var.vm_size
  tags                = var.tags
}

resource "azurerm_role_assignment" "aks_acr_pull" {
  principal_id                     = module.aks.principal_id
  role_definition_name             = "AcrPull"
  scope                            = module.acr.acr_id
  skip_service_principal_aad_check = true
}
