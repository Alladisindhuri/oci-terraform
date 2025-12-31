# provider.tf
provider "oci" {
  # These values are typically loaded from variables (see variables.tf/terraform.tfvars)
  tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaa6o4u5tdt3hucwcqnbr4orzmthcv5n4kqel3abnexdjpz4l744pra"
  user_ocid        = "ocid1.user.oc1..aaaaaaaadyw2oor2sfnaleoiu7sklpjtlzxv4wwaqmqesgrsohcwz47h42sq"
  fingerprint      = "75:4a:cf:47:60:74:1f:1d:05:04:0f:8a:9b:ce:85:13"
  private_key_path = "D:/Virtual_Machines/OCI/Terraform_Keys/OCITerraformPrivate.pem"
  region           = "us-ashburn-1"
}
