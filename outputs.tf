output "kusto_eventhub_data_connections_cluster_name" {
  description = "Map of cluster_name values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.cluster_name }
}
output "kusto_eventhub_data_connections_compression" {
  description = "Map of compression values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.compression }
}
output "kusto_eventhub_data_connections_consumer_group" {
  description = "Map of consumer_group values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.consumer_group }
}
output "kusto_eventhub_data_connections_data_format" {
  description = "Map of data_format values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.data_format }
}
output "kusto_eventhub_data_connections_database_name" {
  description = "Map of database_name values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.database_name }
}
output "kusto_eventhub_data_connections_database_routing_type" {
  description = "Map of database_routing_type values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.database_routing_type }
}
output "kusto_eventhub_data_connections_event_system_properties" {
  description = "Map of event_system_properties values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.event_system_properties }
}
output "kusto_eventhub_data_connections_eventhub_id" {
  description = "Map of eventhub_id values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.eventhub_id }
}
output "kusto_eventhub_data_connections_identity_id" {
  description = "Map of identity_id values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.identity_id }
}
output "kusto_eventhub_data_connections_location" {
  description = "Map of location values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.location }
}
output "kusto_eventhub_data_connections_mapping_rule_name" {
  description = "Map of mapping_rule_name values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.mapping_rule_name }
}
output "kusto_eventhub_data_connections_name" {
  description = "Map of name values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.name }
}
output "kusto_eventhub_data_connections_resource_group_name" {
  description = "Map of resource_group_name values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.resource_group_name }
}
output "kusto_eventhub_data_connections_retrieval_start_date" {
  description = "Map of retrieval_start_date values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.retrieval_start_date }
}
output "kusto_eventhub_data_connections_table_name" {
  description = "Map of table_name values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.table_name }
}

