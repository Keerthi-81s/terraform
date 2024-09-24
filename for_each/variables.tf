variable  "instances" {
  type        = map
  default     = {
    mysql = "t3.small"
    backend = "t3.micro"
    frontend = "t3.micro"
  }
}

variable "domain_name" {
  default = "keerthidevops.online"
}

variable "zone_id" {
  default = "Z0925970TH28O9CHOJMJ"
}