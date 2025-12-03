data "ns_connection" "bucket" {
  name     = "bucket"
  contract = "datastore/gcp/gcs"
}

locals {
  bucket_name    = data.ns_connection.bucket.outputs.bucket_name
  bucket_project = data.ns_connection.bucket.outputs.bucket_project
}
