resource "google_storage_bucket" "my_bucket1" {
  name          = "bkt-isp-dtc00-bdt-prod-001-unique"
  location      = "europe-west3"
  force_destroy = true

  labels = {
    acronimo = "ddlprova"
  }

  uniform_bucket_level_access = true
}

resource "google_storage_bucket_object" "folder_in1" {
  name   = "in/"
  bucket = google_storage_bucket.my_bucket1.name

  # Empty content to create a folder
  content = "Test"
}

resource "google_storage_bucket" "my_bucket2" {
  name          = "bkt-isp-dtc00-bdt-prod-002-unique"
  location      = "europe-west3"
  force_destroy = true

  labels = {
    acronimo = "ddlppprova"
  }

  uniform_bucket_level_access = true
}

resource "google_storage_bucket_object" "folder_in2" {
  name   = "out/"
  bucket = google_storage_bucket.my_bucket2.name

  # Empty content to create a folder
  content = "Test"
}


resource "google_storage_bucket" "my_bucket3" {
  name          = "bkt-isp-dtc00-bdt-prod-003-unique"
  location      = "europe-west3"
  force_destroy = true

  labels = {
    acronimo = "ddlprova"
  }

  uniform_bucket_level_access = true
}

resource "google_storage_bucket_object" "folder_in3" {
  name   = "old/"
  bucket = google_storage_bucket.my_bucket3.name

  # Empty content to create a folder
  content = "Test"
}

resource "google_storage_bucket" "my_bucket4" {
  name          = "bkt-isp-dtc00-bdt-prod-004-unique"
  location      = "europe-west3"
  force_destroy = true

  labels = {
    acronimo = "ddlprova"
  }

  uniform_bucket_level_access = true
}

resource "google_storage_bucket_object" "folder_in4" {
  name   = "bad/"
  bucket = google_storage_bucket.my_bucket4.name

  # Empty content to create a folder
  content = "Test"
}

resource "google_storage_bucket" "my_bucket5" {
  name          = "bkt-isp-dtc00-bdt-prod-005-unique"
  location      = "europe-west3"
  force_destroy = true

  labels = {
    acronimo = "ddlprova"
  }

  uniform_bucket_level_access = true
}

resource "google_storage_bucket_object" "folder_in5_001" {
  name   = "fn-isp-dtc00-bdt-prod-001/function_source-001.zip"
  content_type = "application/x-zip-compressed"
  source = "./function-source-001.zip"
  bucket = google_storage_bucket.my_bucket5.name
}


resource "google_storage_bucket_object" "folder_in5_002" {
  name   = "fn-isp-dtc00-bdt-prod-002/function_source-002.zip"
  content_type = "application/x-zip-compressed"
  source = "./function-source-002.zip"
  bucket = google_storage_bucket.my_bucket5.name
}
