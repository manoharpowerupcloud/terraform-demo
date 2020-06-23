# Configure remote storage of our Terraform state in Azure
# No access keys, subscriptions or similar is needed here
terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-env"
    storage_account_name = "terraformenv"
    container_name       = "multienv"
    key                  = "terraform"
  }
}