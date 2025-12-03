resource "google_storage_bucket_iam_member" "bucket_access" {
  bucket = local.bucket_name
  role   = "roles/storage.objectAdmin"
  member = "serviceAccount:${var.app_metadata["service_account_email"]}"
}
