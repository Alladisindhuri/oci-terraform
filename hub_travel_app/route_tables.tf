
  module "hub_ta_public_rt" {
  source = "../module/route_tables"   # Path to route tables module

  rt_compartment_id = module.hub_TA_network.compartment_id   # Network compartment OCID
  rt_vcn_id         = module.hub_TA_VCN.vcn_id               # Hub VCN OCID
  rt_display_name   = "hub_ta_public_rt"

  rt_route_rules = []
}