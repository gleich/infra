# infra

[![deploy](https://github.com/gleich/infra/actions/workflows/deploy.yml/badge.svg)](https://github.com/gleich/infra/actions/workflows/deploy.yml)
[![lint](https://github.com/gleich/infra/actions/workflows/lint.yml/badge.svg)](https://github.com/gleich/infra/actions/workflows/lint.yml)

Infrastructure configuration with [Terraform](https://www.terraform.io). The following are configured via this repository:

1. [Cloudflare DNS Records](./modules/cloudflare/)
2. [Vercel Projects](./modules/vercel/)
3. [Digitalocean Droplets (VMs)](./modules/digitalocean/)
4. [GitHub Repositories](./modules/github/)
