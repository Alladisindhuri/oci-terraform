module "travelApp" {
  source = "../module/compartments" # Path to the compartments module
  compartment_name = "TravelApp" # Name of the compartment
  compartment_description = "Compartment for Travel Application" # Description of the compartment
  parent_compartment_ocid =  var.tenancy_ocid # OCID of the tenancy
}

module "TravelApp_compute_storage" {
  source = "../module/compartments" # Path to the compartments module
  compartment_name = "TravelApp_compute_storage" # Name of the compartment
  compartment_description = "Compute & storage Compartment for Travel Application" # Description of the compartment
  parent_compartment_ocid =  module.travelApp.compartment_id # OCID of the travelApp compartment
}

module "TravelApp_network" {
  source = "../module/compartments" # Path to the compartments module
  compartment_name = "TravelApp_network" # Name of the compartment
  compartment_description = "Network Compartment for Travel Application" # Description of the compartment
  parent_compartment_ocid =  module.travelApp.compartment_id # OCID of the travelApp compartment
}