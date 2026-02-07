# VCN resource definition for Flip application in OCI
resource "oci_core_virtual_network" "vcn" {
  compartment_id = var.vcn_compartment_id  # network compartment OCID
  display_name   = var.vcn_display_name    # vcn display name
  cidr_block     = var.vcn_cidr_block      # vcn CIDR
  dns_label      = var.vcn_dns_label       # vcn dns label 

  defined_tags = {
    "Flip_Application.env" = local.env  # Using the environment variable from locals.tf for tagging
  }
}

