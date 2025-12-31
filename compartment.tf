# Create Compartment Flip-compartment in the root compartment (tenancy).

resource "oci_identity_compartment" "Flip-compartment" {
    name           = "Flip-compartment" # Name of the compartment
    description    = "Compartment for Flip application resources" # Description of the compartment
    compartment_id = "ocid1.tenancy.oc1..aaaaaaaa6o4u5tdt3hucwcqnbr4orzmthcv5n4kqel3abnexdjpz4l744pra" # Root compartment OCID
   
    defined_tags   = {
        "Flip_Application.env"="prod"
    }

}