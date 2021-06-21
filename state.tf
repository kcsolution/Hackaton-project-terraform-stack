terraform {
  backend "s3" {
    bucket = "kcsolutionHackatonprojectte--581102906"
    key    = "state/hackaton-cicd-deploy"
    region = "us-east-2"
  }
}
