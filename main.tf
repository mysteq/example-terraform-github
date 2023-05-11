resource "github_repository" "example" {
  name        = "example-terraform-github-created"
  description = "My awesome codebase"

  visibility = "public"
}
