locals {
    domain_name  = "keerthidevops.online"
    zone_id = "Z0925970TH28O9CHOJMJ"
    instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
    # count.index will not work in locals
}