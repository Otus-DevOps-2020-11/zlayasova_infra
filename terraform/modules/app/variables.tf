variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}

variable disk_size {
  description = "Disk size Gb"
  default     = "20"
}

variable disk_type {
  description = "Disk type"
  default     = "hdd"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable subnet_id {
  description = "Subnets for modules"
}
