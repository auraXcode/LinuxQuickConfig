import subprocess
import os

requirement_file ="PYrequirement.txt"
subprocess.run(['pip', 'install', '-r', requirement_file])

def is_installed(software_name):
    try:
        subprocess.run(["which", software_name], check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        return True
    except subprocess.CalledProcessError:
        return False

def install_package(software_name):
    try:
        
        if not is_installed(software_name):
            subprocess.run(["sudo", "apt", "install", software_name], check=True)
        
        print(software_name)
        subprocess.run([software_name, "--version"])
    except subprocess.CalledProcessError as e:
        print(f"Failed to install {software_name}. Error: {e}")

def open_download_page(software_url):
    try:
        subprocess.run(["xdg-open", software_url], check=True)
        print(f"Opened download page for {software_url}")
    except subprocess.CalledProcessError as e:
        print(f"Failed to open download page. Error: {e}")

software_list = ["firefox", "nodejs", "kazam", "flameshot"]
software_url = ["https://www.mozilla.org/en-US/firefox/new/",]

for software in software_list:
    install_package(software)
