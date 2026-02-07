# flip-vcn public subnet
/*
resource "oci_core_subnet" "Flip_subnet" {
  compartment_id      = oci_identity_compartment.Flip-network-compartment.id
  vcn_id              = oci_core_virtual_network.vcn.id
  display_name        = "Flip_subnet"
  cidr_block          = "10.0.2.0/29"
  dns_label           = "Flipsubnet"
  
  route_table_id      = oci_core_route_table.flip_vcn_public_rt.id
  security_list_ids   = [oci_core_security_list.public_sl.id]
  
  defined_tags = {
    "Flip_Application.env" = "prod"
  }
}
*/

module "subnet" {
  source = "./module"
  subnet_compartment_id = oci_identity_compartment.Flip-network-compartment.id
  subnet_vcn_id         = oci_core_virtual_network.vcn.id
  subnet_display_name   = "Flip_subnet"
  subnet_cidr_block     = "10.0.2.0/29"
  subnet_dns_label      = "Flipsubnet"
  subnet_route_table_id = oci_core_route_table.flip_vcn_public_rt.id
  subnet_security_list_ids = [oci_core_security_list.public_sl.id]
  }

