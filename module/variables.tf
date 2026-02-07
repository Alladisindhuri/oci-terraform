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

variable "subnet_compartment_id" {
    description = "The OCID of the compartment where the subnet will be created"
    type        = string
    }

variable "subnet_vcn_id" {
    description = "The OCID of the VCN where the subnet will be created"
    type        = string
    }

variable "subnet_display_name" {
    description = "The display name for the subnet"
    type        = string
    }

variable "subnet_cidr_block" {
    description = "The CIDR block for the subnet"
    type        = string
    }

variable "subnet_dns_label" {
    description = "The DNS label for the subnet"
    type        = string
    }

variable "subnet_route_table_id" {
    description = "The OCID of the route table to associate with the subnet"
    type        = string
    }

variable "subnet_security_list_ids" {
    description = "A list of OCIDs of security lists to associate with the subnet"
    type = array(string)
}