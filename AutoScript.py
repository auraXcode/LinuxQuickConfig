import subprocess

def is_installed(package_name):
    try:
        subprocess.run(["which", package_name], check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        return True
    except subprocess.CalledProcessError:
        return False

def install_packages(package_manager, packages):
    for package in packages:
        if not is_installed(package):
            if package_manager == "apt":
                subprocess.run(["sudo", "apt", "install", package], check=True)
            elif package_manager == "pacman":
                subprocess.run(["sudo", "pacman", "-S", "--noconfirm", package], check=True)
            print(f"Installed {package}")
        else:
            print(f"{package} is already installed")

def open_download_page(software_url):
    try:
        subprocess.run(["xdg-open", software_url], check=True)
        print(f"Opened download page for {software_url}")
    except subprocess.CalledProcessError as e:
        print(f"Failed to open download page. Error: {e}")

List of software to install
software_list = ['git', 'nodejs', 'flameshot', 'npm']

# List of packages for pacman
pacman_packages = ["git", "nodejs", "flameshot", "npm"]

# List of software to install
software_list = ['git', "nodejs", "kazam", "flameshot", "npm"]

# Ask user for package manager choice
package_manager = input("Choose package manager (apt or pacman): ").lower()

# Install the specified software
if package_manager == "apt":
    install_packages("apt", apt_packages)
elif package_manager == "pacman":
    install_packages("pacman", pacman_packages)
else:
    print("Invalid package manager choice")
