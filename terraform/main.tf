terraform {
  required_version = "~> 0.12"
  backend "gcs" {
  }
}

provider "google" {
  project = "innovationlab-devops"
  region = "asia-southeast1"
  version = "~> 3.2"
}

