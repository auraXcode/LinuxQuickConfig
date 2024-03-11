#!/bin/bash

# Function to check if yay is installed
check_yay_installed() {
    if ! command -v yay &> /dev/null; then
        echo "yay not found. Installing yay..."
        sudo pacman -Syu # Refresh package cache and update system
        sudo pacman -S --needed base-devel git # Install required packages
        git clone https://aur.archlinux.org/yay.git # Clone yay git repo
        cd yay # Switch to cloned directory
        makepkg -si # Build and install yay package
        cd .. # Move back to previous directory
        rm -rf yay # Remove cloned directory
    fi
}

# Function to install Brave browser
install_brave() {
    echo "Installing Brave browser..."
    yay -S brave-bin
}

# Main function
main() {
    check_yay_installed
    install_brave
    echo "Brave browser installation complete."
}

# Execute main function
main
