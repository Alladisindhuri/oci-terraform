resource "oci_core_drg" "Hub_to_Spoke_drg" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaa3yn6ti4tzodgoncmxva3y7sq4szis4yn6q32psm7d6sscho26fxa"
  display_name   = "Hub-to-Spoke-DRG"
  defined_tags = {
    "Flip_Application.env" = "prod"
  }
}