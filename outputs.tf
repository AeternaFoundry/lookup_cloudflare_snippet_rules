output "snippet_rules_lookup_id" {
  description = "Map of id values across all snippet_rules_lookup, keyed the same as var.snippet_rules_lookup except keys with no id are omitted"
  value       = { for k, v in data.cloudflare_snippet_rules.snippet_rules_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "snippet_rules_lookup_zone_id" {
  description = "Map of zone_id values across all snippet_rules_lookup, keyed the same as var.snippet_rules_lookup except keys with no zone_id are omitted"
  value       = { for k, v in data.cloudflare_snippet_rules.snippet_rules_lookup : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

