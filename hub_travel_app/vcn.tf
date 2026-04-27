module "hub_TA_VCN" {
    source = "../module/vcn" #path to the VCN module
    vcn_display_name = "hub_TA_VCN"
    vcn_compartment_id = module.hub_TA_network.compartment_id # hub_TA_network compartment OCID
    vcn_cidr_block = "10.1.0.0/24"
    vcn_dns_label = "hubTAvcn"
}