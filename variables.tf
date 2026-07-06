variable "logic_app_trigger_customs" {
  description = <<EOT
Map of logic_app_trigger_customs, attributes below
Required:
    - body
    - logic_app_id
    - name
EOT

  type = map(object({
    body         = string
    logic_app_id = string
    name         = string
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_logic_app_trigger_custom's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: logic_app_id
  #   source:    [from workflows.ValidateWorkflowID] !ok
  # path: logic_app_id
  #   source:    [from workflows.ValidateWorkflowID] err != nil
  # path: body
  #   source:    validation.StringIsJSON(...) - no translation rule yet, add one
}

