import subprocess
import platform
import os

def execute_distribution_scripts(distribution):
    # Define the paths to the distribution-specific scripts
    #fonts_script_path = f"./src/{distribution}/fonts.sh"
    browser_script_path = f"./src/{distribution}/browser.sh"
    custom_zsh_script_path = f"./src/{distribution}/CustomZsh.sh"
    
    # Check if the scripts exist
    # if os.path.exists(fonts_script_path):
    #     subprocess.run(["kitty", fonts_script_path], text=True)
    # else:
    #     print(f"Error: Fonts script not found for {distribution} distribution.")
    
    if os.path.exists(browser_script_path):
        subprocess.run(["kitty", browser_script_path], text=True)
    else:
        print(f"Error: Browser script not found for {distribution} distribution.")
    
    if os.path.exists(custom_zsh_script_path):
        subprocess.run(["kitty", custom_zsh_script_path], text=True)
    else:
        print(f"Error: Custom Zsh script not found for {distribution} distribution.")

def main():
    # Get the distribution name
    distribution = platform.platform()
    if "arch" in distribution:
        execute_distribution_scripts("arch")
    elif "ubuntu" in distribution:
        execute_distribution_scripts("ubuntu")
    else:
        print("Error: Unsupported distribution.")

if __name__ == "__main__":
    main()