provider "aws" {
  region  = var.aws_region
  profile = var.profile
}

# Obtener la VPC por defecto
data "aws_vpc" "default" {
  default = true
}

# Obtener una subred pública por defecto
data "aws_subnet" "default" {
  filter {
    name   = "default-for-az"
    values = ["true"]
  }

  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

# Crear Security Group
resource "aws_security_group" "web_sg" {
  name        = "${var.instance_name}-sg"
  description = "Allow HTTP and SSH access"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.instance_name}-sg"
  }
}

# Instancia EC2 con Apache
resource "aws_instance" "web_server" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = var.key_pair_name
  subnet_id                   = data.aws_subnet.default.id
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = var.instance_name
  }

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "Hello, World from ${var.instance_name}!" > /var/www/html/index.html
              EOF
}
