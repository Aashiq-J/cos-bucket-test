variable "ibmcloud_api_key" {
  type        = string
  description = "The IBM Cloud api token"
  sensitive   = true
}

variable "bucket_crn" {
  type        = string
  description = "A prefix for the name of all resources that are created by this example"
}

variable "region" {
  type        = string
  description = "The region where the resources are created."
  default     = "us-south"
}
