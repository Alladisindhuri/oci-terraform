# Create a Virtual Cloud Network (VCN) Spoke in OCI
resource "oci_core_virtual_network" "vcn" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaaa3iwusb6nkibnr6lhi54oqdxzwr5awarpzl66gkoavowd35435bq"
  display_name   = "flip-vcn"
  cidr_block     = "10.0.2.0/24"
  dns_label      = "flipvcn"

  defined_tags = {
    "Flip_Application.env" = "prod"
  }
}