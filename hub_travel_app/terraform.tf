# oci-terraform.tf
terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 6.0.0" # Specify a recommended version constraint
    }
  }
  required_version = ">= 1.0.0"
}
