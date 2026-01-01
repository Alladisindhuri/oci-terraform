resource "oci_core_route_table" "flip_vcn_public_rt" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaaa3iwusb6nkibnr6lhi54oqdxzwr5awarpzl66gkoavowd35435bq"
  vcn_id         = oci_core_virtual_network.vcn.id
  display_name   = "flip-vcn-public-rt"

  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = "ocid1.internetgateway.oc1.iad.aaaaaaaakzksfcicys77hn3e4tk3romlxrhzoco3toxartes7qji4yafqqya"
    description = "Route all internet traffic to Internet Gateway"
    }

  defined_tags = {
    "Flip_Application.env" = "prod"
  }
}