#!/bin/bash

# Check if the script is run with superuser privileges
if [[ $(id -u) -ne 0 ]]; then
    echo "Please run this script as root or using sudo."
    exit 1
fi

echo "Please enter the size of the new swap file in MB:"
read size

# Safety check: Ensure size is provided and is a number
if ! [[ $size =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid size in MB."
    exit 1
fi

# Safety check: Turn off the old swap if it exists
if grep -q "/swapfile" /proc/swaps; then
    echo "Turning off the old swap..."
    sudo swapoff /swapfile
fi

# Safety check: Delete the old swap file if it exists
if [[ -f /swapfile ]]; then
    echo "Deleting the old swap file..."
    sudo rm /swapfile
fi

# Create a new swap file
echo "Creating a new swap file of size ${size}MB..."
sudo dd if=/dev/zero of=/swapfile bs=1M count=$size

# Set correct permissions for the swap file
sudo chmod 600 /swapfile

# Enable the new swap
echo "Enabling the new swap..."
sudo mkswap /swapfile
sudo swapon /swapfile

echo "New swap file created and enabled successfully."

# Display the new swap information
free -h



# sudo swapoff /swapfile
# free -h
# cd /
# rm swapfile
# echo "Plz enter your size in MB"
# read size
# sudo dd if=/dev/zero of=/swapfile bs=1M count=$size
# sudo chmod 600 /swapfile
# sudo mkswap /swapfile
# sudo swapon /swapfile