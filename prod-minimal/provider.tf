terraform {
  required_version = ">= 0.13.0"

  required_providers {
    ec = {
      source  = "elastic/ec"
      version = "0.4.1"
    }
  }
}

provider "ec" {
  # ECE installation endpoint or Elastic Cloud Service
  endpoint = "https://cloud.elastic.co"
  insecure = false
  apikey = "${var.api_key}"
}