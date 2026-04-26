module "hub_travelApp" {
  source = "../module/compartments" # Path to the compartments module
  compartment_name = "hub_travelApp" # Name of the compartment
  compartment_description = "Hub Compartment for Travel Application" # Description of the compartment
  parent_compartment_ocid =  var.tenancy_ocid # OCID of the tenancy
}

module "hub_TA_compute_storage" {
  source = "../module/compartments" # Path to the compartments module
  compartment_name = "hub_TA_compute_storage" # Name of the compartment
  compartment_description = "Hub compute & storage Compartment for Travel Application" # Description of the compartment
  parent_compartment_ocid =  module.hub_travelApp.compartment_id # OCID of the hub_travelApp compartment
}

module "hub_TA_network" {
  source = "../module/compartments" # Path to the compartments module
  compartment_name = "hub_TA_network" # Name of the compartment
  compartment_description = "Hub network Compartment for Travel Application" # Description of the compartment
  parent_compartment_ocid =  module.hub_travelApp.compartment_id # OCID of the hub_travelApp compartment
}