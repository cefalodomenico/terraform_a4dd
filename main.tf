provider "google" {
  project = "spartan-grail-279116"
  region  = "europe-west3"
}

terraform {
  required_version = ">= 0.12"
}

module "storage" {
  source = "./storage"
}
