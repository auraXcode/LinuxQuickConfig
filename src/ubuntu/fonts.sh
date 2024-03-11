echo "Downloading Nerd fonts:
1. Hack 
2. FireCode
3. JetBrainMono\n"

cd ~/Downloads
wget -nc https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Hack.zip
wget -nc https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip
wget -nc https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip

ls

# /usr/local/share/fonts :>font containing dir
for file in ~/Downloads/*.zip; do
    # Your commands using $file
    echo "Processing file: $file
    "
    echo "Permission required to write into <usr> dir"
    # unzip and move to place where it should be
    sudo unzip "$file" -d "/usr/local/share/fonts"
done

cd /usr/local/share/fonts
#adjust permissions 
sudo chmod 644 /usr/local/share/fonts/*.ttf
# Update Font Cache:
# sudo fc-cache -f -v

# not needed yet:
#    cleaning file/folders after task done
#    User-specific Font Directories:
#         `~/.fonts`: User-specific font directory, 
#           where fonts are available only to the user who installed them.