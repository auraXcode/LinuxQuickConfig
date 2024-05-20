#!/bin/bash


command_exists() {
  command -v "$1" >/dev/null 2>&1
}

if ! command_exists zsh; then
  sudo pacman -S --noconfirm zsh
fi


if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if [ ! -d "$HOME/powerlevel10k" ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$HOME/powerlevel10k"
  echo 'source "$HOME/powerlevel10k/powerlevel10k.zsh-theme"' >> "$HOME/.zshrc"
fi

if [ ! -f "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k/powerlevel10k.zsh-theme" ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
fi

if [ "$SHELL" != "$(command -v zsh)" ]; then
  if ! grep -Fxq "/bin/zsh" /etc/shells; then
    sudo sh -c 'echo "/bin/zsh" >> /etc/shells'
  fi

  if chsh -s $(which zsh); then
    echo "Default shell changed to Zsh."
  else
    echo "Failed to change default shell using chsh. Trying alternate method."
    if chsh -s /bin/zsh; then
      echo "Default shell changed to Zsh."
    else
      echo "Failed to change default shell to Zsh. Please try manually."
    fi
  fi
fi
