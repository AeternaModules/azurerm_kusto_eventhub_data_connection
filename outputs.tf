output "kusto_eventhub_data_connections_id" {
  description = "Map of id values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kusto_eventhub_data_connections_cluster_name" {
  description = "Map of cluster_name values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.cluster_name if v.cluster_name != null && length(v.cluster_name) > 0 }
}
output "kusto_eventhub_data_connections_compression" {
  description = "Map of compression values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.compression if v.compression != null && length(v.compression) > 0 }
}
output "kusto_eventhub_data_connections_consumer_group" {
  description = "Map of consumer_group values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.consumer_group if v.consumer_group != null && length(v.consumer_group) > 0 }
}
output "kusto_eventhub_data_connections_data_format" {
  description = "Map of data_format values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.data_format if v.data_format != null && length(v.data_format) > 0 }
}
output "kusto_eventhub_data_connections_database_name" {
  description = "Map of database_name values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.database_name if v.database_name != null && length(v.database_name) > 0 }
}
output "kusto_eventhub_data_connections_database_routing_type" {
  description = "Map of database_routing_type values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.database_routing_type if v.database_routing_type != null && length(v.database_routing_type) > 0 }
}
output "kusto_eventhub_data_connections_event_system_properties" {
  description = "Map of event_system_properties values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.event_system_properties if v.event_system_properties != null && length(v.event_system_properties) > 0 }
}
output "kusto_eventhub_data_connections_eventhub_id" {
  description = "Map of eventhub_id values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.eventhub_id if v.eventhub_id != null && length(v.eventhub_id) > 0 }
}
output "kusto_eventhub_data_connections_identity_id" {
  description = "Map of identity_id values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.identity_id if v.identity_id != null && length(v.identity_id) > 0 }
}
output "kusto_eventhub_data_connections_location" {
  description = "Map of location values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.location if v.location != null && length(v.location) > 0 }
}
output "kusto_eventhub_data_connections_mapping_rule_name" {
  description = "Map of mapping_rule_name values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.mapping_rule_name if v.mapping_rule_name != null && length(v.mapping_rule_name) > 0 }
}
output "kusto_eventhub_data_connections_name" {
  description = "Map of name values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.name if v.name != null && length(v.name) > 0 }
}
output "kusto_eventhub_data_connections_resource_group_name" {
  description = "Map of resource_group_name values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "kusto_eventhub_data_connections_retrieval_start_date" {
  description = "Map of retrieval_start_date values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.retrieval_start_date if v.retrieval_start_date != null && length(v.retrieval_start_date) > 0 }
}
output "kusto_eventhub_data_connections_table_name" {
  description = "Map of table_name values across all kusto_eventhub_data_connections, keyed the same as var.kusto_eventhub_data_connections"
  value       = { for k, v in azurerm_kusto_eventhub_data_connection.kusto_eventhub_data_connections : k => v.table_name if v.table_name != null && length(v.table_name) > 0 }
}

