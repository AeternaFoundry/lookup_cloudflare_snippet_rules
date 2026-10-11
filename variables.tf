variable "snippet_rules_lookup" {
  description = <<EOT
Map of snippet_rules_lookup, attributes below
Required:
    - zone_id
EOT

  type = map(object({
    zone_id = string
  }))
}

