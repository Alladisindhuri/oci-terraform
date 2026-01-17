resource "oci_core_internet_gateway" "flip_internet_gateway" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaaa3iwusb6nkibnr6lhi54oqdxzwr5awarpzl66gkoavowd35435bq"  #flip-network-compartment OCID
  vcn_id         = "ocid1.vcn.oc1.iad.amaaaaaanzgirfaa6nrxo6nrf3dvttchfvi4gkko3ubx73mv53eguinj62xq"   #flip-vcn OCID
  display_name   = "flip-internet-gateway"  #Internet Gateway name for flip VCN
  enabled        = true

  defined_tags = {
    "Flip_Application.env" = "prod"
  }
}