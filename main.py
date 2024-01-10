import subprocess


fontScript = "./src/fonts.sh"
browserScript = "./src/browser.sh"
# Make the script executable
# subprocess.run(['chmod', '+x', fontScript], check=True)

subprocess.run(["bash", fontScript], text=True)
subprocess.run(["bash", browserScript], text=True)
