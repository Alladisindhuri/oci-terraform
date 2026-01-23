resource "oci_core_route_table" "flip_vcn_public_rt" {
  compartment_id = oci_identity_compartment.Flip-network-compartment.id  #flip_network-compartment OCID
  vcn_id         = oci_core_virtual_network.vcn.id
  display_name   = "flip-vcn-public-rt"

  route_rules {
    destination       = "10.0.3.0/29"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_drg.Hub_to_Spoke_drg.id
    description = "Route Traffic from Flip_VCN to Skillup_ via DRG"
    }

  defined_tags = {
    "Flip_Application.env" = "prod"
  }

  route_rules {
    destination       = "10.0.0.0/24"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_drg.Hub_to_Spoke_drg.id
    description       = "Attaching Flip_Public_Subnet to Hub_VCN via DRG"
  }
}
