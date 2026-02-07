# vcn subnet

resource "oci_core_subnet" "subnet" {
  compartment_id      = var.subnet_compartment_id  # vcn compartment OCID
  vcn_id              = var.subnet_vcn_id         # vcn OCID
  display_name        = var.subnet_display_name # subnet display name
  cidr_block          = var.subnet_cidr_block # subnet CIDR block
  dns_label           = var.subnet_dns_label # subnet DNS label
  route_table_id      = var.subnet_route_table_id
  security_list_ids   = var.subnet_security_list_ids
  
  defined_tags = {
    "Flip_Application.env" = "prod"
  }
}

