output "warehouses_lookup_id" {
  description = "Map of id values across all warehouses_lookup, keyed the same as var.warehouses_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_warehouses.warehouses_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "warehouses_lookup_like" {
  description = "Map of like values across all warehouses_lookup, keyed the same as var.warehouses_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_warehouses.warehouses_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "warehouses_lookup_warehouses" {
  description = "Map of warehouses values across all warehouses_lookup, keyed the same as var.warehouses_lookup except keys with no warehouses are omitted"
  value       = { for k, v in data.snowflake_warehouses.warehouses_lookup : k => v.warehouses if v.warehouses != null && length(v.warehouses) > 0 }
}
output "warehouses_lookup_with_describe" {
  description = "Map of with_describe values across all warehouses_lookup, keyed the same as var.warehouses_lookup except keys with no with_describe are omitted"
  value       = { for k, v in data.snowflake_warehouses.warehouses_lookup : k => v.with_describe if v.with_describe != null }
}
output "warehouses_lookup_with_parameters" {
  description = "Map of with_parameters values across all warehouses_lookup, keyed the same as var.warehouses_lookup except keys with no with_parameters are omitted"
  value       = { for k, v in data.snowflake_warehouses.warehouses_lookup : k => v.with_parameters if v.with_parameters != null }
}

