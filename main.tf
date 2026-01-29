module "buckets" {
  source  = "terraform-ibm-modules/cos/ibm//modules/buckets"
  version = "10.9.7" # Replace "latest" with a release version to lock into a specific release
  bucket_configs = [
    {
      bucket_name            = "jan29-651374"
      kms_encryption_enabled = false
      region_location        = "us-south"
      resource_instance_id   = var.bucket_crn
    },
    {
      bucket_name            = "jan29-2389764"
      kms_encryption_enabled = false
      region_location        = "us-south"
      resource_instance_id   = var.bucket_crn
      object_versioning = {
        enable = true
      }
    }
  ]
}
