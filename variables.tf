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
  validation {
    condition = alltrue([
      for k, v in var.logic_app_trigger_customs : (
        can(jsondecode(v.body))
      )
    ])
    error_message = "must be valid JSON"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

