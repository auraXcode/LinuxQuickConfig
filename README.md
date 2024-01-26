# LinuxRapidConfig 🚀 workflow 😎🔥

> LinuxRapidConfig: Streamlines the setup process for Linux system.
>

It covers

- installation
- software/package/library setup
- terminal configuration
- aesthetic enhancements like themes, icons, plank and fonts.

## Fonts

Configration file `src/font.sh`

1. Hack
2. FireCode
3. JetBrainMono

## Softwares

### Browsers 

Configration file `src/browser.sh`

## Nvim
[NvChad Config files](https://github.com/auraXcode/dotfiles.git)
## Terminal Customization
**Auto setup run** `CustomZsh.sh`
### Manual
  1. Installing `Zsh`
  ```
  sudo apt-get install zsh
  ```
  2. Downloading and Installing `oh-my-zsh`
  ```
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```
  3. powerlevel10k
  ```
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
  echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
  ```

## Initiate setup

```python
python3 main.py
```
