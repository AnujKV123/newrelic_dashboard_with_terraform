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
#   account_id = <Your Account ID>
#   api_key = <Your User API Key>    # Usually prefixed with 'NRAK'
  account_id = 4000874
  api_key = "NRAK-N0HAQ4M8DWGVYD4HF9P6QZ0WT3P"    # Usually prefixed with 'NRAK'
  region = "US"                    # Valid regions are US and EU
}
