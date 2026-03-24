# gcp-gcs-access

Grants a GCP application access to a Google Cloud Storage bucket.

## Cross-Project

If you attempt to grant access to a bucket in a different project, this module will apply without granting the necessary IAM permissions.
To finalize this access, you must manually grant access to the app's service account to the desired GCS bucket.

To do this, execute this the following command in the bucket's GCP project:
```shell
BUCKET_PROJECT="<'bucket_project' from gcs bucket outputs>"
BUCKET_NAME="<'bucket_name' from gcs bucket outputs>"
APP_SA_EMAIL="<'service_account_email' from app outputs>"
gcloud storage buckets add-iam-policy-binding gs://${BUCKET_NAME} \
  --member=serviceAccount:${APP_SA_EMAIL} \
  --role=roles/storage.objectAdmin
```
