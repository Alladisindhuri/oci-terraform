module "travelApp" {
  source = "../module/compartments" # Path to the compartments module
  compartment_name = "TravelApp" # Name of the compartment
  compartment_description = "Compartment for Travel Application" # Description of the compartment
  parent_compartment_ocid =  var.tenancy_ocid # OCID of the tenancy
}