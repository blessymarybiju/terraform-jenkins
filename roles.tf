resource "azurerm_role_definition" "custom_role" {
  name        = var.role_name
  description = "Custom role for specific tasks"
  permissions {
    actions = [
      "Microsoft.Compute/virtualMachines/start/action",
      "Microsoft.Compute/virtualMachines/deallocate/action"
    ]
  }
  scope = "/subscriptions/${data.azurerm_client_config.current.subscription_id}"
}
