import subprocess

# Install Python dependencies from requirements file
requirement_file = "PYrequirement.txt"
subprocess.run(['pip', 'install', '-r', requirement_file])


def is_installed(software_name):
    try:
        subprocess.run(["which", software_name], check=True,
                       stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        return True
    except subprocess.CalledProcessError:
        return False


def install_package(software_list):
    try:
        for software_name in software_list:
            # Check if the software is already installed
            if not is_installed(software_name):
                subprocess.run(["sudo", "apt", "install", software_name],
                               check=True)
                print(f"Installed {software_name}")

                # Print the version if available
                subprocess.run([software_name, "--version"])
    except subprocess.CalledProcessError as e:
        print(f"Failed to install {software_name}. Error: {e}")


def open_download_page(software_url):
    try:
        subprocess.run(["xdg-open", software_url], check=True)
        print(f"Opened download page for {software_url}")
    except subprocess.CalledProcessError as e:
        print(f"Failed to open download page. Error: {e}")


# List of URLs to open download pages
software_url = ["https://www.mozilla.org/en-US/firefox/new/",
                "https://github.com/VSCodium/vscodium"]

# List of software to install
software_list = ['git', "nodejs", "kazam", "flameshot", "npm", "conda", "snap",
                 "snapd"]

# Install the specified software
install_package(software_list)

"""
This script installs and configures various software packages
 on a Linux system.
"""
