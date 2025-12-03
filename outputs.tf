output "env" {
  value = [
    {
      name  = "GCS_BUCKET_NAME"
      value = local.bucket_name
    },
    {
      name  = "GCS_BUCKET_PROJECT",
      value = local.bucket_project
    }
  ]
}
