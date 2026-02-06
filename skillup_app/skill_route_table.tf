resource "oci_core_route_table" "Skillup_vcn_app_rt" {
  compartment_id = oci_identity_compartment.Skillup_network_compartment.id  #Skillup_network-compartment OCID
  vcn_id         = oci_core_virtual_network.Skillup_vcn.id
  display_name   = "Skillup_vcn_app_rt"

  route_rules {
    destination       = "10.0.0.0/24" # Hub VCN CIDR
    destination_type  = "CIDR_BLOCK"
    network_entity_id = local.drg_ocid # DRG OCID
    description = "Route to Hub VCN via DRG"
    }

  defined_tags = {
    "Skillup_tags.env" = "prod"
    "Skillup_tags.owner" = "sindhuri"
  }

  route_rules {
    destination       = "10.0.2.0/29" # Flip Subnet CIDR
    destination_type  = "CIDR_BLOCK"
    network_entity_id = local.drg_ocid # DRG OCID
    description = "Route to Flip via DRG"
    }             
  
}