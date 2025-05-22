variable "aws_region" {
  description = "AWS Region"
  default     = "us-east-1"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC Cidr block"
  default     = ""
  type        = string
}

variable "public_subnet_cidr" {
  description = "Public Subnets CIDR block"
  default     = []
  type        = list(string)
}

variable "subnet_az" {
  description = "Public Subnets Availability Zones"
  default     = []
  type        = list(string)
}

variable "private_subnet_cidr" {
  description = "Public Subnets CIDR block"
  default     = []
  type        = list(string)
}
