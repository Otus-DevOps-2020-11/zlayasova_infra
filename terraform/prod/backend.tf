terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "zlayasova-otus"
    region     = "ru-central1"
    key        = "terraform/terraform.tfstate"
    access_key = "-KQuRBoenQH34531dsffsdfaLXKv"
    secret_key = "p4i3ysfpZwoi456t90wkljdsfjvb2EFk52oioQWEq3IkyW"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
