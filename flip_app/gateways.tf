resource "oci_core_internet_gateway" "flip_internet_gateway" {
  compartment_id = oci_identity_compartment.Flip-network-compartment.id  #flip-network-compartment OCID
  vcn_id         = oci_core_virtual_network.vcn.id   #flip-vcn OCID
  display_name   = "flip-internet-gateway"  #Internet Gateway name for flip VCN
  enabled        = true

  defined_tags = {
    "Flip_Application.env" = "prod"
  }
}