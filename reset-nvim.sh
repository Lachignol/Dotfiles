#!/bin/bash
echo "Fermeture de Neovim et suppression des fichiers de config/plugins/cache..."
rm -rf ~/.config/nvim \
       ~/.local/share/nvim \
       ~/.cache/nvim \
       ~/.local/state/nvim
echo "Neovim réinitialisé !"

