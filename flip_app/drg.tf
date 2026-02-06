resource "oci_core_drg" "Hub_to_Spoke_drg" {
  compartment_id = local.hub_compartment_ocid # Hub compartment OCID
  display_name   = "Hub-to-Spoke-DRG"
  defined_tags = {
    "Flip_Application.env" = "prod"
  }
}

resource "oci_core_drg_attachment" "hub_vcn_attachment" {
  drg_id         = oci_core_drg.Hub_to_Spoke_drg.id
  vcn_id         = local.hub_vcn_ocid # Hub VCN OCID
  display_name   = "hub-vcn-attachment"
}

resource "oci_core_drg_attachment" "flip_vcn_attachment" {
  drg_id         = oci_core_drg.Hub_to_Spoke_drg.id
  vcn_id         = oci_core_virtual_network.vcn.id     # Flip VCN OCID
  display_name   = "flip-vcn-attachment"
}

resource "oci_core_drg_attachment" "Skillup_vcn_attachment" {
  drg_id         = oci_core_drg.Hub_to_Spoke_drg.id
  vcn_id         = oci_core_virtual_network.skillup_vcn.id   #skillup VCN OCID
  display_name   = "skillup_vcn_attachment"
}


