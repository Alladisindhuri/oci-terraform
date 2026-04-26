module "travelApp" {
  source = "../module/compartments" # Path to the compartments module
  compartment_name = "hub_travelApp" # Name of the compartment
  compartment_description = "Hub Compartment for Travel Application" # Description of the compartment
  parent_compartment_ocid =  var.tenancy_ocid # OCID of the tenancy
}