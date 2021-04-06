terraform {
  backend "remote" {
    organization = "shared_devops_sandbox"    
    workspaces {
      name = "tf-pl-k8s-vault-consul-gke"
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
