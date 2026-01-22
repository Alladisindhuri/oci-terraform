resource "oci_identity_compartment" "Skillup_compartment" {
  name           = "Skillup_compartment"  # Name of the compartment
  description    = "Compartment for Skillup application resources" # Description of the compartment
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaa6o4u5tdt3hucwcqnbr4orzmthcv5n4kqel3abnexdjpz4l744pra" # Root compartment OCID

  defined_tags = {
    "Skillup_tags.env" = "prod"
    "Skillup_tags.owner"= "sindhuri"
  }

}

# Create Sub-Compartment Skillup_network_compartment in the Skillup_compartment (Application compartment).

resource "oci_identity_compartment" "Skillup_network_compartment" {
  name           = "Skillup_network_compartment" # Name of the Sub compartment
  description    = "Compartment for Skillup network resources" # Description of the Sub compartment
  compartment_id = oci_identity_compartment.Skillup_compartment.id # Skillup-compartment OCID(parent compartment OCID)

  defined_tags = {
    "Skillup_tags.env" = "prod"
    "Skillup_tags.owner"= "sindhuri"
  }

}

# Create Sub-Compartment Skillup_Compute_and_Storage_compartment in the Skillup_compartment (Application compartment).

resource "oci_identity_compartment" "Skillup_Compute_and_Storage_compartment" {
  name           = "Skillup_Compute_and_Storage_compartment"  # Name of the Sub compartment
  description    = "Compartment for Skillup compute and storage resources"  # Description of the Sub compartment
  compartment_id = oci_identity_compartment.Skillup_compartment.id # Skillup-compartment OCID(parent compartment OCID)

  defined_tags = {
    "Skillup_tags.env" = "prod"
    "Skillup_tags.owner"= "sindhuri"
  }

}