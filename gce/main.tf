resource "google_compute_instance" "gce" {
  count        = length(var.list_vm)
  name         = var.list_vm[count.index]
  machine_type = "e2-micro"
  zone         = "asia-southeast2-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = var.vpc_name
    access_config {
    }
  }

  metadata_startup_script = <<-EOT
  #!/bin/bash
  sudo apt update && sudo apt install nginx -y
  sudo echo "<h1>Belajar terraform module</h1>" > /var/www/html/index.html
  EOT

  tags = ["web"]
}