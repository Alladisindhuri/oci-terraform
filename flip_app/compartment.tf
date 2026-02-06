# Create Compartment Flip-compartment in the root compartment (tenancy).

resource "oci_identity_compartment" "Flip-compartment" {
  name           = "Flip-compartment"                                                                # Name of the compartment
  description    = "Compartment for Flip application resources"                                      # Description of the compartment
  compartment_id = var.tenancy_ocid # Root compartment OCID/ Tenancy OCID

  defined_tags = {
    "Flip_Application.env" = "prod"
  }

}

# Create Sub-Compartment Flip-network-compartment in the Flip-compartment (Application compartment).

resource "oci_identity_compartment" "Flip-network-compartment" {
  name           = "Flip-network-compartment"                                                            # Name of the compartment
  description    = "Compartment for Flip network resources"                                              # Description of the compartment
  compartment_id = oci_identity_compartment.Flip-compartment.id # Flip-compartment OCID(parent compartment OCID)

  defined_tags = {
    "Flip_Application.env" = "prod"
  }

}

resource "oci_identity_compartment" "Flip_Compute_and_Storage-compartment" {
  name           = "Flip_Compute_and_Storage-compartment"                                                            # Name of the compartment
  description    = "Compartment for Flip compute and storage resources"                                              # Description of the compartment
  compartment_id = oci_identity_compartment.Flip-compartment.id # Flip-compartment OCID(parent compartment OCID)

  defined_tags = {
    "Flip_Application.env" = "prod"
  }

}