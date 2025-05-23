variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "MarketMate"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_pair_name" {
  description = "Name of the existing AWS Key Pair"
  type        = string
  default     = "dianis"  # o tambien puedo usar EC2 Tutorial
}

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-central-1"
}

variable "profile" {
  description = "AWS named CLI profile"
  type        = string
  default     = "AdministratorAccess-069865454777"
}

variable "ami" {
  description = "AMI ID to use for the EC2 instance"
  type        = string
  # Amazon Linux 2023 para eu-central-1 (Frankfurt)
  default     = "ami-02b7d5b1e55a7b5f1"
}
