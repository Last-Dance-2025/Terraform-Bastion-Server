terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
    # Bastion의 Public IP를 가져오기 위해 http 프로바이더 추가
    http = {
      source  = "hashicorp/http"
      version = "~> 3.4"
    }
  }
}

# AWS 프로바이더 설정
# Bastion EC2에서 실행되므로, 이 인스턴스에 연결된
# IAM Role의 권한을 자동으로 상속받습니다.
provider "aws" {
  region = var.aws_region
}