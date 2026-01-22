resource "oci_core_drg" "Hub_to_Spoke_drg" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaa3yn6ti4tzodgoncmxva3y7sq4szis4yn6q32psm7d6sscho26fxa"
  display_name   = "Hub-to-Spoke-DRG"
  defined_tags = {
    "Flip_Application.env" = "prod"
  }
}

resource "oci_core_drg_attachment" "hub_vcn_attachment" {
  drg_id         = oci_core_drg.Hub_to_Spoke_drg.id
  vcn_id         = "ocid1.vcn.oc1.iad.amaaaaaanzgirfaaniddguce72cfu6uv3ygkfznnelp4vgaibbgxtv6wyx4a"
  display_name   = "hub-vcn-attachment"
}

resource "oci_core_drg_attachment" "flip_vcn_attachment" {
  drg_id         = oci_core_drg.Hub_to_Spoke_drg.id
  vcn_id         = oci_core_virtual_network.vcn.id
  display_name   = "flip-vcn-attachment"
}

resource "oci_core_drg_attachment" "Skillup_vcn_attachment" {
  drg_id         = oci_core_drg.Hub_to_Spoke_drg.id
  vcn_id         = "ocid1.vcn.oc1.iad.amaaaaaanzgirfaaekv57cakyh2d26vyrowsf7izg2egvgcgdnuaymddswgq"
  display_name   = "skillup_vcn_attachment"
}


