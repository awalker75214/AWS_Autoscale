provider "aws" {
  region = "ap-northeast-1" #change region to what ever you would like to use

}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}