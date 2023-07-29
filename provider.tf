terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "3.26.0"
    }
  }
}
provider "newrelic" {
  account_id = var.acc_id
  api_key = var.apk  # Usually prefixed with 'NRAK'
  region = "US"  
}