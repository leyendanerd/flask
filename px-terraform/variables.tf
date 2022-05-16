variable "pm_api_url" {
  description = "PVE management URL"
  default     = "https://192.99.63.158:8006/api2/json"
}

variable "pm_api_token_id" {
  description = "Proxmox API token id"
  default     = "terraform@pam!terraform"
}

variable "pm_api_token_secret" {
  description = "Proxmox API secret token"
  default     = "780596f8-b729-4f64-803d-4ad1201825da"
}

variable "pm_pass_dockerapp" {
  description = "Password lxc docker-app"
  default     = "Asterisk.123!"
}

