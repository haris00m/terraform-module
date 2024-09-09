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
  credentials = file(var.credential)
}