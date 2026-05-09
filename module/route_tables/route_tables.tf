resource "oci_core_route_table" "route_table" {
  compartment_id = var.rt_compartment_id
  vcn_id         = var.rt_vcn_id
  display_name   = var.rt_display_name

  dynamic "route_rules" {
    for_each = var.rt_route_rules
    content {
      destination       = route_rules.value.destination
      destination_type  = route_rules.value.destination_type
      network_entity_id = route_rules.value.network_entity_id
    }
  }
}