# security list for public subnet
resource "oci_core_security_list" "public_sl" {
  compartment_id = oci_identity_compartment.Flip-network-compartment.id  # Flip-network-compartment OCID
  vcn_id         = oci_core_virtual_network.vcn.id
  display_name   = "flip-public-security-list"

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
    source      = "10.0.3.0/29"
    source_type = "CIDR_BLOCK"
    description = "Allow SSH from Skillup app Subnet"
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
    "Flip_Application.env" = "prod"
  }
}