terraform {
  backend "remote" {
    organization = "shared_devops_sandbox"    
    workspaces {
      name = "terraform-pipes-k8s-gke"
    }
  }
required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.55"
    }
}

required_version = "~> 0.14"
}



provider "google" {
  project = var.google_project
  region  = var.region
}

# VPC
resource "google_compute_network" "vpc" {
  name                    = "${var.google_project}-vpc"
  auto_create_subnetworks = "false"
}

# Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = "${var.google_project}-subnet"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.10.0.0/24"
}
