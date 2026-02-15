/*
# Create a Virtual Cloud Network (VCN) Spoke in OCI
resource "oci_core_virtual_network" "vcn" {
  compartment_id = oci_identity_compartment.Flip-network-compartment.id  # Flip-network-compartment OCID
  display_name   = "flip-vcn"
  cidr_block     = "10.0.2.0/24"
  dns_label      = "flipvcn"

  defined_tags = {
    "Flip_Application.env" = "prod"
  }
}
*/

module "vcn" {
  source = "d:/Cloud Architect course/Terraform/oci-terraform/module"
  vcn_compartment_id = oci_identity_compartment.Flip-network-compartment.id  # Flip-network-compartment OCID
  vcn_display_name   = "flip-vcn" # Flip_application VCN display name
  vcn_cidr_block     = "10.0.2.0/24" # Flip_application VCN CIDR block
  vcn_dns_label      = "flipvcn" # Flip_application VCN DNS label

}

