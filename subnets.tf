# flip-vcn public subnet

resource "oci_core_subnet" "public_subnet" {
  compartment_id      = "ocid1.compartment.oc1..aaaaaaaaa3iwusb6nkibnr6lhi54oqdxzwr5awarpzl66gkoavowd35435bq"
  vcn_id              = "ocid1.vcn.oc1.iad.amaaaaaanzgirfaa6nrxo6nrf3dvttchfvi4gkko3ubx73mv53eguinj62xq"
  display_name        = "flip-public-subnet"
  cidr_block          = "10.0.2.0/26"
  dns_label           = "flippubsub"
  
  route_table_id      = "ocid1.routetable.oc1.iad.aaaaaaaadb77t4phfsmre7xuxzjfzmgue7elkgembeh5nnkfl7dij647xmua"
  security_list_ids   = ["ocid1.securitylist.oc1.iad.aaaaaaaahswwmtvqxxpd6aqsjzu42jghnjfs6fc2cgw5f7lnpsiechpqqlaa"]
  
  defined_tags = {
    "Flip_Application.env" = "prod"
  }
}

# flip-vcn private subnet

resource "oci_core_subnet" "private_subnet" {
  compartment_id      = "ocid1.compartment.oc1..aaaaaaaaa3iwusb6nkibnr6lhi54oqdxzwr5awarpzl66gkoavowd35435bq"
  vcn_id              = "ocid1.vcn.oc1.iad.amaaaaaanzgirfaa6nrxo6nrf3dvttchfvi4gkko3ubx73mv53eguinj62xq"
  display_name        = "flip-private-subnet"
  cidr_block          = "10.0.2.64/26"
  dns_label           = "flippvtsub"
  
  route_table_id      = "ocid1.routetable.oc1.iad.aaaaaaaajmuzzr5xytuvtl4n3a4i4bgppfo5njtaoztpav6fkcehbvwnin2a"
  security_list_ids   = ["ocid1.securitylist.oc1.iad.aaaaaaaahswwmtvqxxpd6aqsjzu42jghnjfs6fc2cgw5f7lnpsiechpqqlaa"]
  
  prohibit_internet_ingress = true

  defined_tags = {
    "Flip_Application.env" = "prod"
  }
}
