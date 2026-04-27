variable "vcn_compartment_id" {
    description = "The OCID of the compartment where the VCN will be created"
    type        = string
    }

variable "vcn_display_name" {
    description = "The display name for the VCN"
    type        = string
    }

variable "vcn_cidr_block" {
    description = "The CIDR block for the VCN" 
    type        = string
    }

variable "vcn_dns_label" {
    description = "The DNS label for the VCN"
    type        = string
    }