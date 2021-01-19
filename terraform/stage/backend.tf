terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "zlayasova-otus"
    region     = "ru-central1"
    key        = "terraform/terraform.tfstate"
    access_key = "qwerty123"
    secret_key = "qwerty123"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
