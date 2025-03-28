#!/bin/bash
set -e

# Function to start the demo
start_demo() {
  # Step 3: Start Arch
  echo "Starting Arch with arch_config.yaml..."
  archgw up arch_config_CARSv1.yaml

  # Step 4: Start developer services
  echo "Starting Network Agent using Docker Compose..."
  docker-compose up  # Run in detached mode
}

# Function to stop the demo
stop_demo() {
  # Step 1: Stop Docker Compose services
  echo "Stopping Network Agent using Docker Compose..."
  docker-compose down

  # Step 2: Stop Arch
  echo "Stopping Arch..."
  archgw down
}

# Main script logic
if [ "$1" == "down" ]; then
  stop_demo
else
  # Default action is to bring the demo up
  start_demo
fi
