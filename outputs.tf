output "logic_app_trigger_customs_body" {
  description = "Map of body values across all logic_app_trigger_customs, keyed the same as var.logic_app_trigger_customs"
  value       = { for k, v in azurerm_logic_app_trigger_custom.logic_app_trigger_customs : k => v.body }
}
output "logic_app_trigger_customs_callback_url" {
  description = "Map of callback_url values across all logic_app_trigger_customs, keyed the same as var.logic_app_trigger_customs"
  value       = { for k, v in azurerm_logic_app_trigger_custom.logic_app_trigger_customs : k => v.callback_url }
}
output "logic_app_trigger_customs_logic_app_id" {
  description = "Map of logic_app_id values across all logic_app_trigger_customs, keyed the same as var.logic_app_trigger_customs"
  value       = { for k, v in azurerm_logic_app_trigger_custom.logic_app_trigger_customs : k => v.logic_app_id }
}
output "logic_app_trigger_customs_name" {
  description = "Map of name values across all logic_app_trigger_customs, keyed the same as var.logic_app_trigger_customs"
  value       = { for k, v in azurerm_logic_app_trigger_custom.logic_app_trigger_customs : k => v.name }
}

