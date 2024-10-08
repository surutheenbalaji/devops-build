#!/bin/bash
echo "$SUDO_PASSWORD" | sudo -S your-command-here
# Stop existing container if running
docker stop devops-app || true
docker rm devops-app || true

# Run the application using Docker Compose
docker-compose up -d

