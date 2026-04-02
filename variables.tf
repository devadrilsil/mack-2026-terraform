variable "aws_region" {
  description = "A região da AWS"
  default     = "us-east-1"
}

variable "ambiente" {  
  type        = string
  default     = "dev"
}

variable "prefix_obj" {
  description = "prefixo dos objetos"
  type        = string  
  default     = "mack-akds-2026"
}

variable "nome_buckets" {
  description = "nome dos buckets"
  type        = string
  default     = "e-dados-cc-sreuma"
}

variable "athena_db" {
  description = "nome do db no Athena"
  type        = string
  default     = "db_do_projeto"
}


variable "instance_type" {
  description = "O tipo da instância EC2"
  default     = "t3.micro"
}

variable "ami_id" {
  description = "ID da AMI EC2"
  default     = "ami-01b14b7ad41e17ba4"
}
