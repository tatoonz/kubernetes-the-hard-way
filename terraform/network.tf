resource "google_compute_network" "vpc" {
  name = "kubernetes-the-hard-way"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "kubernetes" {
  name = "kubernetes"
  ip_cidr_range = "10.240.0.0/24"
  network = google_compute_network.vpc.self_link
}
