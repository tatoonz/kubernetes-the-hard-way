terraform {
  required_version = "~> 0.12"
  backend "gcs" {
  }
}

provider "google" {
  project = var.project
  version = "~> 3.2"
}
