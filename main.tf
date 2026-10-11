data "cloudflare_snippet_rules" "snippet_rules_lookup" {
  for_each = var.snippet_rules_lookup

  zone_id = each.value.zone_id
}

