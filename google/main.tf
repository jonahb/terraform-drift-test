terraform {
  backend "s3" {
    bucket         = "s12t"
    key            = "google.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}

provider "google" {
  project = "terraform-drift-test"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_storage_bucket" "test" {
  name = "terraform-drift-test"
}
