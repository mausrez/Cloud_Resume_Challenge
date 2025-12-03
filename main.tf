resource "oci_objectstorage_bucket" "resume_bucket" {
compartment_id = var.compartment_ocid
namespace      = var.namespace123
name = "Cloud_Resume"
access_type    = "ObjectRead" 
  # Metadata opcional
  metadata = {
    "project" = "cloud-resume-challenge"
    }
}

# Output para ver la URL del bucket
output "bucket_url" {
  value = "https://objectstorage.${var.region}.oraclecloud.com/n/${var.namespace}/b/${oci_objectstorage_bucket.resume_bucket.name}/o/"
}