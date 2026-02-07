# Create a Virtual Cloud Network (VCN) Spoke in Skillup_network_compartment
/*
resource "oci_core_virtual_network" "Skillup_vcn" {
  compartment_id = oci_identity_compartment.Skillup_network_compartment.id  # Skillup_network_compartment OCID
  display_name   = "Skillup_vcn"
  cidr_block     = "10.0.3.0/24"
  dns_label      = "skillupvcn"

  defined_tags = {
    "Skillup_tags.env" = "prod"
    "Skillup_tags.owner" = "sindhuri"
  }
}
*/

module "vcn" {
  source = "./module"
  vcn_compartment_id = oci_identity_compartment.Skillup_network_compartment.id  # Skillup_network_compartment OCID
  vcn_display_name   = "Skillup_vcn" # Skillup VCN display name
  vcn_cidr_block     = "10.0.3.0/24" # Skillup VCN CIDR block
  vcn_dns_label      = "skillupvcn" # Skillup VCN DNS label 
}

