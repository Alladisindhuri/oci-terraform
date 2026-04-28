variable rt_compartment_id {
    description = "Compartment OCID for the route table"
    type        = string
}

variable "rt_vcn_id" {
    description = "VCN OCID for the route table"
    type        = string
}

variable "rt_display_name" {
    description = "Display name for the route table"
    type        = string
}

variable "rt_route_rules" {
    description = "List of route rules for the route table"
    type = list(object({
        destination       = string
        destination_type  = string
        network_entity_id = string
    }))
    default = []
}