data "external" "fetch_credentials" {
  program = ["bash", "${path.module}/fetch_credentials.sh"]
}

locals {
  credentials = data.external.fetch_credentials.result
  project_id = "caps-dashboard"
  region     = "europe-west2"
}