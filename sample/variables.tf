##################################################################
### Tag vars
##################################################################
locals {
  workspace_tags = {
    # "environment"  = var.environment
    # "tenant"       = var.tenant
    # "cost-centre"  = var.cost_centre
    "git:filepath" = "/iac/terraform/${var.tenant}/network/"
  }
}

variable "cost_centre" {
  type    = string
  default = "warehouse"
}
variable "tenant" {
  type    = string
  default = "warehouse"
}

variable "owner" {
  type    = string
  default = "rebecca.hughes"
}

variable "project" {
  type    = string
  default = "giftcards"
}

variable "application" {
  type    = string
  default = "gift-cards-service"
}

variable "git_repo" {
  type    = string
  default = "Gift-Cards-Service"
}

variable "sec_confidentiality" {
  type    = string
  default = "internal"
}
variable "sec_customer_data" {
  type    = bool
  default = false
}

variable "sec_pci" {
  type    = bool
  default = false
}

variable "sec_gdpr" {
  type    = bool
  default = false
}