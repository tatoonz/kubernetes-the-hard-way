resource "google_compute_instance" "k8s_controller" {
  count = 3
  name = "controller-${count.index}"
  machine_type = "n1-standard-1"
  tags = ["kubernetes-the-hard-way", "controller"]
  zone = "asia-southeast1-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-1804-lts"
      size = 200
    }
  }

  can_ip_forward = true

  network_interface {
    subnetwork = google_compute_subnetwork.kubernetes.self_link
    network_ip = "10.240.0.1${count.index}"
  }

  service_account {
    scopes = ["compute-rw", "storage-ro", "service-management", "service-control", "logging-write", "monitoring"]
  }
}
