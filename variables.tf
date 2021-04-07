variable "region" {
  type        = string
  default     = "us-central1"
  description = "GCP region to deploy clusters."
}

variable "cluster_name" {
  type        = string
  default     = "tfc-pipelines"
  description = "Name of cluster."
}

variable "cluster_range" {
  default     = "10.25.80.0/20"
  description = "cluster IP range"
}

variable "alias_ip_range" {
  default     = "10.25.65.0/24"
  description = "alias IP range"
}
variable "google_project" {
  type        = string
  description = "Google Project to deploy cluster"
}

variable "username" {
  type        = string
  default     = "admin"
  description = "Username for GKE clusters"
}

variable "password" {
  type        = string
  description = "Password for GKE clusters"
}

variable "enable_consul_and_vault" {
  type        = bool
  default     = false
  description = "Enable consul and vault for the secrets cluster"
}
