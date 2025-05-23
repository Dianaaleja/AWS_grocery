#!/bin/bash

# Actualizar paquetes
sudo yum update -y

# Instalar Apache (opcional si ya lo tienes)
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
echo "Hello, World from $(hostname)!" | sudo tee /var/www/html/index.html

# Instalar Docker
sudo yum install -y docker
sudo systemctl start docker
sudo systemctl enable docker

# Agregar ec2-user al grupo docker
sudo usermod -aG docker ec2-user

echo "✅ Docker y Apache instalados. Cierra sesión con 'exit' y vuelve a entrar para usar Docker sin sudo."
