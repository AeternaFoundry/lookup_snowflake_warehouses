data "snowflake_warehouses" "warehouses_lookup" {
  for_each = var.warehouses_lookup

  like            = each.value.like
  with_describe   = each.value.with_describe
  with_parameters = each.value.with_parameters
}

