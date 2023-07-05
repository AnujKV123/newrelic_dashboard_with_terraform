# Configure terraform
terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "~> 2.50.2"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
  account_id = <Your Account ID>
  api_key = <Your User API Key>    # Usually prefixed with 'NRAK'

  region = "US"                    # Valid regions are US and EU
}
