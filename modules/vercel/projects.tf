resource "vercel_project" "website" {
  name      = "website"
  framework = "nextjs"
  git_repository = {
    repo = "gleich/website"
    type = "github"
  }
}

resource "vercel_project" "blackbird" {
  name      = "blackbird"
  framework = "nextjs"
}

resource "vercel_project" "website_v5" {
  name      = "website-v5"
  framework = "nextjs"
  git_repository = {
    repo = "gleich/website-v5"
    type = "github"
  }
}
