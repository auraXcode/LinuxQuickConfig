#!/bin/bash

# Install curl
sudo apt install -y curl
# Download Brave browser keyring
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
# Add Brave browser repository
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
# Update package manager
sudo apt update
# Install Brave browser
sudo apt install -y brave-browser



# Floorp
curl -fsSL https://ppa.ablaze.one/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/Floorp.gpg
sudo curl -sS --compressed -o /etc/apt/sources.list.d/Floorp.list 'https://ppa.ablaze.one/Floorp.list'
sudo apt update
sudo apt install floorp

echo "Installation complete
Brave installed
Floorp installed"