#!/bin/bash

# Update system and install Docker
echo "Updating system and installing Docker..."
sudo apt update -y
sudo apt install -y docker.io

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Add current user to Docker group (to run Docker without sudo)
sudo usermod -aG docker $USER

# Pull the official Netdata image
echo "Pulling Netdata Docker image..."
docker pull netdata/netdata

# Run Netdata container
echo "Running Netdata container..."
docker run -d --name=netdata \
  -p 19999:19999 \
  --cap-add SYS_PTRACE \
  --security-opt apparmor=unconfined \
  -v netdataconfig:/etc/netdata \
  -v netdatalib:/var/lib/netdata \
  -v netdatacache:/var/cache/netdata \
  -v /etc/passwd:/host/etc/passwd:ro \
  -v /etc/group:/host/etc/group:ro \
  -v /proc:/host/proc:ro \
  -v /sys:/host/sys:ro \
  -v /etc/os-release:/host/etc/os-release:ro \
  netdata/netdata

echo "Netdata setup complete! Access it via: http://<your-ec2-public-ip>:19999"
echo "Note: You may need to log out and log back in for Docker group access to apply."
