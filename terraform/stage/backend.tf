terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "zlayasova-otus"
    region     = "ru-central1"
    key        = "terraform/terraform.tfstate"
    access_key = "-KQuRBoenQHIPcI6LXKv"
    secret_key = "p4i3ysfpZ2eFOGqJR8a3hN2EFk52oioQWEq3IkyW"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
