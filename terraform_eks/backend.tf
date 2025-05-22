terraform {
  backend "s3" {
    bucket = "devopstf"
    region = "us-east-1"
    key    = "statefile/eks.tfstate"
  }
}
