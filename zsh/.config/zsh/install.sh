#!/usr/bin/env bash

set -e

echo "=== Installation ZSH plugins ==="

# --------------------------------------------------
# OH MY ZSH
# --------------------------------------------------

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Installing Oh My Zsh..."

  RUNZSH=no CHSH=no sh -c \
    "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# --------------------------------------------------
# ZSH CUSTOM PATH
# --------------------------------------------------

ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

# --------------------------------------------------
# ZSH AUTOSUGGESTIONS
# --------------------------------------------------

if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
  echo "Installing zsh-autosuggestions..."

  git clone \
    https://github.com/zsh-users/zsh-autosuggestions \
    "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
fi

# --------------------------------------------------
# ZSH SYNTAX HIGHLIGHTING
# --------------------------------------------------

if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
  echo "Installing zsh-syntax-highlighting..."

  git clone \
    https://github.com/zsh-users/zsh-syntax-highlighting \
    "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
fi

# --------------------------------------------------
# FZF
# --------------------------------------------------

if [ ! -d "$HOME/.fzf" ]; then
  echo "Installing fzf..."

  git clone --depth 1 \
    https://github.com/junegunn/fzf.git ~/.fzf

  ~/.fzf/install --all
fi

echo "=== Installation terminée ==="
