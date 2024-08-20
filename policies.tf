data "azurerm_client_config" "current" {}

resource "azurerm_policy_definition" "custom_policy" {
  name         = var.policy_name
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Custom Policy"
  policy_rule  = <<-EOT
    {
      "if": {
        "allOf": [
          {
            "field": "location",
            "equals": "eastus"
          },
          {
            "field": "type",
            "equals": "Microsoft.Compute/virtualMachines"
          }
        ]
      },
      "then": {
        "effect": "deny"
      }
    }
  EOT
}

