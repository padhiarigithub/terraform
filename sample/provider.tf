terraform {
  required_version = ">= 1.1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.40"
    }
  }
}

provider "aws" {
  region = "eu-west-1"

  default_tags {
    tags = {
      "owner"                    = var.owner
      "project"                  = var.project
      "application"              = var.application
      "cost-centre"              = var.cost_centre
      "tenant"                   = var.tenant
      "environment"              = var.environment
      "iac"                      = "terraform"      
      "security:compliance-gdpr" = var.sec_gdpr
      "security:compliance-pci"  = var.sec_pci
      "security:customer-data"   = var.sec_customer_data
      "security:confidentiality" = var.sec_confidentiality
      "git:org"                  = "prettylittlething"
      "git:repo"                 = var.git_repo
    }
  }
}


provider "aws" {
  region = "us-east-1"
  alias = "us_east_1"

  default_tags {
    tags = {
      "owner"                    = var.owner
      "project"                  = var.project
      "application"              = var.application
      "cost-centre"              = var.cost_centre
      "tenant"                   = var.tenant
      "environment"              = var.environment
      "iac"                      = "terraform"      
      "security:compliance-gdpr" = var.sec_gdpr
      "security:compliance-pci"  = var.sec_pci
      "security:customer-data"   = var.sec_customer_data
      "security:confidentiality" = var.sec_confidentiality
      "git:org"                  = "prettylittlething"
      "git:repo"                 = var.git_repo
    }
  }
}
