## Fichier de config perso 

#### Creation de fichier avec tout les paquets present sur la machine

```bash
sudo apt list --installed > liste_paquets.txt
```
ou 

```bash
sudo dpkg --list  > liste_paquets.txt
```
#### Installer les paquets en prenant le fichier comprenant toute la liste comme arguments

```bash
sudo xargs -a liste_paquets.txt apt install
```
### Installation

1)cloner le repos dans ~ (/home)

2)Telecharger Stow

3)Tapez cd ~/dotfiles
Puis faire stow pour tout ce que l'on veu link:

Exemple:

stow nvim
stow tmux
stow zsh

ps: pour neovim installer fzf et ripgrep
