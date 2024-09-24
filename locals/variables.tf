variable "instance_names" {
    type        = list(string)
    default     = ["mysql","backend","frontend"]
    description = "description"
}

# variable "domain_name" {
#     default = "keerthidevops.online"
# }

# variable "zone_id" {
#     default = "Z09970TH28O9CHOJMJ"
# }

variable "environment" {
  default = "prod"
}

