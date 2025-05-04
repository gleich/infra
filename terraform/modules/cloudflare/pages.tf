resource "cloudflare_pages_project" "mattglei_ch" {
  name              = "mattglei-ch"
  account_id        = var.account_id
  production_branch = "main"
  build_config {
    build_caching   = true
    destination_dir = var.svelte_kit_destination_dir
  }
  source {
    type = "github"
    config {
      owner             = "gleich"
      repo_name         = "mattglei.ch"
      production_branch = "main"
    }
  }
}
