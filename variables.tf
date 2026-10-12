variable "warehouses_lookup" {
  description = <<EOT
Map of warehouses_lookup, attributes below
Optional:
    - like
    - with_describe
    - with_parameters
EOT

  type = map(object({
    like            = optional(string)
    with_describe   = optional(bool)
    with_parameters = optional(bool)
  }))
}

