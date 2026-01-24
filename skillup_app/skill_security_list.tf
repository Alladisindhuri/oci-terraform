resource "oci_core_security_list" "Skillup_sl" {
  compartment_id = oci_identity_compartment.Skillup_network_compartment.id  # Skillup_network_compartment OCID
  vcn_id         = oci_core_virtual_network.Skillup_vcn.id
  display_name   = "skillup_security_list"

  ingress_security_rules {
    protocol    = "6"   # 6 is the protocol number for TCP
    source      = "10.0.0.0/24"
    source_type = "CIDR_BLOCK"
    description = "Allow SSH from Hub Public Subnet"
    tcp_options {
      min = 22
      max = 22
    }


  }
  ingress_security_rules {
    protocol    = "6"   # 6 is the protocol number for TCP
    source      = "10.0.2.0/29"
    source_type = "CIDR_BLOCK"
    description = "Allow SSH from Flip app Subnet"
    tcp_options {
      min = 22
      max = 22
    }


  }

  egress_security_rules {
    protocol    = "all"
    destination = "0.0.0.0/0"
    description = "Allow all outbound traffic"
  }

  defined_tags = {
    "Skillup_tags.env" = "prod"
    "Skillup_tags.owner" = "sindhuri"
  }
}