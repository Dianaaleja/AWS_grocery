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
  default     = "jonas"  # Keep this only if it matches a real key pair name in your AWS Console
}

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-central-1"
}

variable "profile" {
  description = "AWS named CLI profile"
  type        = string
  default     = "default"  # Basado en el paso 8
}

variable "ami" {
  description = "AMI ID to use for the EC2 instance"
  type        = string
  # Amazon Linux 2 para eu-central-1 (puedes cambiarlo si usas otra imagen)
  default     = "ami-0c02fb55956c7d316"
}
