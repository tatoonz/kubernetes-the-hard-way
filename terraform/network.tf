resource "google_compute_network" "vpc" {
  name = var.vpc_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "kubernetes" {
  name = var.vpc_subnet_name
  ip_cidr_range = var.vpc_subnet_cidr
  network = google_compute_network.vpc.self_link
}
