terraform {
  backend "gcs" {
    bucket = "murali-test-devops"
    prefix = "vpc/clahan-vpc"
  }
}
