<!-- BEGIN_TF_DOCS -->
# warehouse-giftcards-network-{env}-{region}

To test before committing
```
$ terraform plan \
    --var "environment=prod" \
    --var "cost_centre=warehouse" \
    --var "tenant=warehouse"
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.40 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.40 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws-application-domain"></a> [aws-application-domain](#module\_aws-application-domain) | app.terraform.io/prettylittlething/application-domain/aws | 0.1.2 |

## Resources

| Name | Type |
|------|------|
| [aws_ssm_parameter.acm_cert](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_acm_certificate.amazon_issued](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/acm_certificate) | data source |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
| [terraform_remote_state.warehouse_infrastructure_dns](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application"></a> [application](#input\_application) | n/a | `string` | n/a | yes |
| <a name="input_cost_centre"></a> [cost\_centre](#input\_cost\_centre) | n/a | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | n/a | yes |
| <a name="input_git_repo"></a> [git\_repo](#input\_git\_repo) | n/a | `string` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | n/a | `string` | n/a | yes |
| <a name="input_sec_confidentiality"></a> [sec\_confidentiality](#input\_sec\_confidentiality) | n/a | `string` | n/a | yes |
| <a name="input_sec_customer_data"></a> [sec\_customer\_data](#input\_sec\_customer\_data) | n/a | `string` | n/a | yes |
| <a name="input_sec_gdpr"></a> [sec\_gdpr](#input\_sec\_gdpr) | n/a | `string` | n/a | yes |
| <a name="input_sec_pci"></a> [sec\_pci](#input\_sec\_pci) | n/a | `string` | n/a | yes |
| <a name="input_tenant"></a> [tenant](#input\_tenant) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->