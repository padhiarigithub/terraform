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

variable "environment" { type = string }
variable "cost_centre" { type = string }
variable "project" { type = string }
variable "application" { type = string }
variable "tenant" { type = string }
variable "owner" { type = string }
variable "git_repo" { type = string }
variable "sec_confidentiality" { type = string }
variable "sec_customer_data" { type = string }
variable "sec_pci" { type = string }
variable "sec_gdpr" { type = string }
