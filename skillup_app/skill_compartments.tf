resource "oci_identity_compartment" "Flip-compartment" {
  name           = "Skillup_compartment"                                                                # Name of the compartment
  description    = "Compartment for Skillup application resources"                                      # Description of the compartment
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaa6o4u5tdt3hucwcqnbr4orzmthcv5n4kqel3abnexdjpz4l744pra" # Root compartment OCID

  defined_tags = {
    "Skillup_tags.env" = "prod"
    "Skillup_tags.owner"= "sindhuri"
  }

}