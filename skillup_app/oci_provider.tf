# provider.tf
provider "oci" {
  # These values are typically loaded from variables (see variables.tf/terraform.tfvars)
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}



