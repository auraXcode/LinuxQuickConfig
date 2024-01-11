import subprocess


fontScript = "./src/fonts.sh"
browserScript = "./src/browser.sh"
terminalCustomize = "./src/CustomZsh.sh"
# Make the script executable
# subprocess.run(['chmod', '+x', terminalCustomize], check=True)

# subprocess.run(["bash", fontScript], text=True)
# subprocess.run(["bash", browserScript], text=True)
subprocess.run(["bash", terminalCustomize], text=True)