data "aws_region" "current" {}

data "aws_caller_identity" "current" {}

locals {
  region     = data.aws_region.current.name
  account_id = data.aws_caller_identity.current.account_id
}

##################################################################
### DNS 
### Get the remote state of the infrastructure workspace to retrieve outputs and create the nameserver records to point to the project's DNS zone.
##################################################################
data "terraform_remote_state" "warehouse_infrastructure_dns" {
  backend = "remote"

  config = {
    organization = "prettylittlething"
    workspaces = {
      name = "warehouse-infrastructure-dns-aws-${var.environment}-ireland"
    }
  }
}

locals {
  ## The root zone id for the service specific parent domain ({tenant}.{env}.grp.prettylittlething.io). 
  ## Nameserver records for this project will be added to this zone
  brand_network_zone_id = data.terraform_remote_state.warehouse_infrastructure_dns.outputs.output_aws_route53_zone_zone_id

  ## The cross-account role in the networks account to assume when adding records to the DNS zone
  network_account_role = data.terraform_remote_state.warehouse_infrastructure_dns.outputs.output_allow_cross_account_dns_updates_from_network_account_arn
}
