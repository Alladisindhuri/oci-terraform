# Create Compartment Flip-compartment in the root compartment (tenancy).

resource "oci_identity_compartment" "Flip-compartment" {
    name           = "Flip-compartment" # Name of the compartment
    description    = "Compartment for Flip application resources" # Description of the compartment
    compartment_id = "ocid1.tenancy.oc1..aaaaaaaa6o4u5tdt3hucwcqnbr4orzmthcv5n4kqel3abnexdjpz4l744pra" # Root compartment OCID
   
    defined_tags   = {
        "Flip_Application.env"="prod"
    }

}

# Create Sub-Compartment Flip-network-compartment in the Flip-compartment (Application compartment).

resource "oci_identity_compartment" "Flip-network-compartment" {
    name           = "Flip-network-compartment" # Name of the compartment
    description    = "Compartment for Flip network resources" # Description of the compartment
    compartment_id = "ocid1.compartment.oc1..aaaaaaaaxj2ideukw2bvru34qxssc5rvw75np4mk4bf3wfhcuarcab64laba" # Flip-compartment OCID(parent compartment OCID)
   
    defined_tags   = {
        "Flip_Application.env"="prod"
    }

}