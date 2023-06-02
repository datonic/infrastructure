terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

resource "cloudflare_r2_bucket" "sandbox" {
  account_id = "fbe814d4a37d3d3d7fcfeec0ab929ff6"
  name       = "sandbox"
}
