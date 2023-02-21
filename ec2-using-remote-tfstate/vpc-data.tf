data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    #hostname = "app.terraform.io"
    organization = "cloudmagician-pvt-ltd"
    workspaces = {
      name = "terraformlearning-networking"
    }
  }
}
