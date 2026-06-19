resource "google_storage_bucket" "auto-expire" {
  name          = "mi-bucket-curso-gcp" # Cambia esto, debe ser único global
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 30 # a los 30 días le hace un delete
    }

    action {
      type = "Delete"
    }
  }
}