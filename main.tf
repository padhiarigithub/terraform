# Domain & Cert
module "aws-application-domain" {

  source  = "app.terraform.io/prettylittlething/application-domain/aws"
  version = "0.1.2"

  domain                = "prettylittlething.io"
  time_to_live          = "86400"
  brand_network_zone_id = local.brand_network_zone_id
  network_account_role  = local.network_account_role
  project               = var.project
  application           = var.application
  cost_centre           = var.cost_centre
  tenant                = var.tenant
}

data "aws_acm_certificate" "amazon_issued" {
  domain      = "giftcards.warehouse.${var.environment}.grp.prettylittlething.io"
  types       = ["AMAZON_ISSUED"]
  most_recent = true
  depends_on  = [module.aws-application-domain]
}

resource "aws_ssm_parameter" "acm_cert" {
  name  = "/acm/cert/giftcards.warehouse.${var.environment}.grp.prettylittlething.io/internal-apis/eu-west-1/arn"
  type  = "String"
  value = module.aws-application-domain.acm_certificate_arn

  tags = local.workspace_tags
}


# # Domain & Cert
# module "aws-application-domain_us-east-1" {

#   source  = "app.terraform.io/prettylittlething/application-domain/aws"
#   version = "0.1.1"

#   domain                = "prettylittlething.io"
#   time_to_live          = "86400"
#   brand_network_zone_id = local.brand_network_zone_id
#   network_account_role  = local.network_account_role
#   project               = var.project
#   application           = var.application
#   cost_centre           = var.cost_centre
#   tenant                = var.tenant

#   providers = {
#     aws = aws.us_east_1
#    }
# }

# data "aws_acm_certificate" "amazon_issued_us_east_1" {
#   domain      = "giftcards.warehouse.${var.environment}.grp.prettylittlething.io"
#   types       = ["AMAZON_ISSUED"]
#   most_recent = true
#   depends_on  = [module.aws-application-domain_us-east-1]

#   provider = aws.us_east_1
# }

# resource "aws_ssm_parameter" "acm_cert_us_east_1" {
#   name  = "/acm/cert/giftcards.warehouse.${var.environment}.grp.prettylittlething.io/internal-apis/us-east-1/arn"
#   type  = "String"
#   value = module.aws-application-domain_us-east-1.acm_certificate_arn

#   provider = aws.us_east_1
# }