variable "kusto_eventhub_data_connections" {
  description = <<EOT
Map of kusto_eventhub_data_connections, attributes below
Required:
    - cluster_name
    - consumer_group
    - database_name
    - eventhub_id
    - location
    - name
    - resource_group_name
Optional:
    - compression
    - data_format
    - database_routing_type
    - event_system_properties
    - identity_id
    - mapping_rule_name
    - retrieval_start_date
    - table_name
EOT

  type = map(object({
    cluster_name            = string
    consumer_group          = string
    database_name           = string
    eventhub_id             = string
    location                = string
    name                    = string
    resource_group_name     = string
    compression             = optional(string) # Default: "None"
    data_format             = optional(string)
    database_routing_type   = optional(string) # Default: "Single"
    event_system_properties = optional(list(string))
    identity_id             = optional(string)
    mapping_rule_name       = optional(string)
    retrieval_start_date    = optional(string)
    table_name              = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.kusto_eventhub_data_connections : (
        v.event_system_properties == null || (length(v.event_system_properties) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_kusto_eventhub_data_connection's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.DataConnectionName] regexp.MustCompile(`^[\s]+$`).MatchString(name)
  # path: name
  #   source:    [from validate.DataConnectionName] !regexp.MustCompile(`^[a-zA-Z0-9\s.-]+$`).MatchString(name)
  # path: name
  #   condition: length(value) <= 40
  #   message:   [from validate.DataConnectionName: invalid when len(value) > 40]
  #   source:    [from validate.DataConnectionName: invalid when len(value) > 40]
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: cluster_name
  #   source:    [from validate.ClusterName] !regexp.MustCompile(`^[a-z][a-z0-9\-]+$`).MatchString(name)
  # path: cluster_name
  #   source:    [from validate.ClusterName] len(name) < 4 || len(name) > 22
  # path: compression
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: database_name
  #   source:    [from validate.DatabaseName] regexp.MustCompile(`^[\s]+$`).MatchString(name)
  # path: database_name
  #   source:    [from validate.DatabaseName] !regexp.MustCompile(`^[a-zA-Z0-9\s._-]+$`).MatchString(name)
  # path: database_name
  #   condition: length(value) <= 260
  #   message:   [from validate.DatabaseName: invalid when len(value) > 260]
  #   source:    [from validate.DatabaseName: invalid when len(value) > 260]
  # path: eventhub_id
  #   source:    [from eventhubs.ValidateEventhubID] !ok
  # path: eventhub_id
  #   source:    [from eventhubs.ValidateEventhubID] err != nil
  # path: consumer_group
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: table_name
  #   source:    [from validate.EntityName] regexp.MustCompile(`^[\s]+$`).MatchString(name)
  # path: table_name
  #   source:    [from validate.EntityName] !regexp.MustCompile(`^[a-zA-Z0-9_\s.-]+$`).MatchString(name)
  # path: table_name
  #   condition: length(value) <= 1024
  #   message:   [from validate.EntityName: invalid when len(value) > 1024]
  #   source:    [from validate.EntityName: invalid when len(value) > 1024]
  # path: identity_id
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: mapping_rule_name
  #   source:    [from validate.EntityName] regexp.MustCompile(`^[\s]+$`).MatchString(name)
  # path: mapping_rule_name
  #   source:    [from validate.EntityName] !regexp.MustCompile(`^[a-zA-Z0-9_\s.-]+$`).MatchString(name)
  # path: mapping_rule_name
  #   condition: length(value) <= 1024
  #   message:   [from validate.EntityName: invalid when len(value) > 1024]
  #   source:    [from validate.EntityName: invalid when len(value) > 1024]
  # path: data_format
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: database_routing_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: retrieval_start_date
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
}

