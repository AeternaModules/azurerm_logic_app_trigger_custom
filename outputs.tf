output "logic_app_trigger_customs" {
  description = "All logic_app_trigger_custom resources"
  value       = azurerm_logic_app_trigger_custom.logic_app_trigger_customs
}
output "logic_app_trigger_customs_body" {
  description = "List of body values across all logic_app_trigger_customs"
  value       = [for k, v in azurerm_logic_app_trigger_custom.logic_app_trigger_customs : v.body]
}
output "logic_app_trigger_customs_callback_url" {
  description = "List of callback_url values across all logic_app_trigger_customs"
  value       = [for k, v in azurerm_logic_app_trigger_custom.logic_app_trigger_customs : v.callback_url]
}
output "logic_app_trigger_customs_logic_app_id" {
  description = "List of logic_app_id values across all logic_app_trigger_customs"
  value       = [for k, v in azurerm_logic_app_trigger_custom.logic_app_trigger_customs : v.logic_app_id]
}
output "logic_app_trigger_customs_name" {
  description = "List of name values across all logic_app_trigger_customs"
  value       = [for k, v in azurerm_logic_app_trigger_custom.logic_app_trigger_customs : v.name]
}

