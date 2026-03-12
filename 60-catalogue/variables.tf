variable "project" {
    type=string
    default="roboshop"
}

variable "environment" {
    type=string
    default="dev"
}

variable "zone_id" {
    default = "Z02888033TNMXI6HSFQ0T"
}

variable "domain_name" {
    default = "annuru.online"
}

variable "tags" {
    type = map
    default = merge ( 
    { 
        Name = "${var.project}-${var.environment}-catalogue" 
    }, 
    local.common_tags 
  )
}