# Resource definition for compartments in OCI 
resource "oci_identity_compartment" "compartment" {
  name          = var.compartment_name  # Compartment name
  description   = var.compartment_description  # Compartment description
  compartment_id = var.parent_compartment_ocid  # Parent compartment OCID

  defined_tags = {
    "TravelApp.env" = local.env  # Using the environment variable from locals.tf for tagging
  }
}