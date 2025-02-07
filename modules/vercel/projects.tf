resource "vercel_project" "website" {
  name      = "website"
  framework = "nextjs"
  git_repository = {
    repo = "gleich/website"
    type = "github"
  }
}

resource "vercel_project" "coverframe" {
  name      = "website"
  framework = "nextjs"
  git_repository = {
    repo = "gleich/coverframe"
    type = "github"
  }
  root_directory = "website"
}

resource "vercel_project" "blackbird" {
  name      = "blackbird"
  framework = "nextjs"
}
