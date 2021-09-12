terraform {
  backend "s3" {
    bucket         = "tf-kubernetes"
    key            = "project-workspace"
    region         = "eu-west-2"
    dynamodb_table = "tf-state-lock"
  }
}