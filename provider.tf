provider "aws" {
  access_key = ""
  secret_key = ""
  token      = ""
  region     = var.aws_region
  
  default_tags {
    tags = {
      Project     = "Mackenzie-Eng-Dados-2026"
      ManagedBy   = "Terraform"
      Environment = var.ambiente 
    }
  }
}