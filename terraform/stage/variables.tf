variable cloud_id {
  description = "Cloud"
}

variable folder_id {
  description = "Folder"
}

variable zone {
  description = "Zone"
  default     = "ru-central1-b"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable image_id {
  description = "Disk image"
}

variable subnet_id {
  description = "Subnet"
}

variable service_account_key_file {
  description = "key .json"
}

variable path_to_key {
  description = "Path to secret key"
}

variable instance_count {
  description = "Quantity instance"
  default     = "1"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}

variable db_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-db-base"
}

variable disk_size {
  description = "Disk size"
}

variable disk_type {
  description = "Disk type"
}
