terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.1.0"
    }
  }
}

provider "google" {
  project     = "haris00m-belajar-terraform"
  region      = "asia-southeast2"
  credentials = file("../haris00m-belajar-terraform-9d74314482c6.json")
}