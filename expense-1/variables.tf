variable "instance_names" {
    type        = list(string)
    default     = ["mysql","backend","frontend"]
    description = "description"
}

variable "domain_name" {
    default = "keerthidevops.online"
}

variable "zone_id" {
    default = "Z0925970TH28O9CHOJMJ"
}