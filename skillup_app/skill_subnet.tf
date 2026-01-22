# flip-vcn public subnet

resource "oci_core_subnet" "Skillup_subnet" {
  compartment_id      = oci_identity_compartment.Skillup_network_compartment.id
  vcn_id              = oci_core_virtual_network.Skillup_vcn.id
  display_name        = "Skillup_subnet"
  cidr_block          = "10.0.3.0/29"
  dns_label           = "Skillupsubnet"

  route_table_id      = oci_core_route_table.Skillup_vcn_app_rt.id
  security_list_ids   = [oci_core_security_list.Skillup_sl.id]
  
  defined_tags = {
    "Skillup_tags.env" = "prod"
    "Skillup_tags.owner" = "sindhuri"
  }
}

