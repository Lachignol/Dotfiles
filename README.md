## Fichier de config perso 

### Installation des paquets et dependances

#### Étape 1: Préparation du fichier (machine actuelle)

```bash
# Exporte la liste complète (format machine)
dpkg --get-selections | grep install > ~/paquets-installes.txt

# Sauvegarde les sources APT (obligatoire)
sudo cp /etc/apt/sources.list ~/sources.list.backup
# Cree une archive compressée du dossier /etc/apt/sources.list.d/
sudo tar -czf ~/sources.list.d.tar.gz /etc/apt/sources.list.d/
# warning normal a pas prendre en compte "Suppression de « / » au début des noms des membres"

# Copie tout dans un dossier
mkdir ~/backup-paquets
cp ~/paquets-installes.txt ~/sources.list.backup ~/sources.list.d.tar.gz ~/backup-paquets/
```

#### Étape 2: Réinstallation complète (nouvelle machine)

```bash
# 1. Copie le dossier backup-paquets sur la nouvelle machine
# (USB, scp, etc.)

# 2. Restaure les sources
sudo cp backup-paquets/sources.list.backup /etc/apt/sources.list
sudo tar -xzf backup-paquets/sources.list.d.tar.gz -C /

# 3. Met à jour les dépôts
sudo apt update
# 4. Répare les dépendances et stabilise APT
sudo apt -f install

# 5. Réinstalle TOUS les paquets
sudo dpkg --set-selections < backup-paquets/paquets-installes.txt
sudo apt-get dselect-upgrade -y

# 6. Nettoie
sudo apt autoremove
sudo apt autoclean
```

#### Vérification

##### Machine 1 : compte les paquets
```bash
wc -l ~/paquets-installes.txt
```

##### Machine 2 : après réinstall, compare
```bash
dpkg --get-selections | grep install | wc -l
```

### Installation des configurations

1) cloner le repos dans ~ (/home)

2) Telecharger Stow

3) Tapez :
   
```bash
cd ~/dotfiles
```
Puis faire stow pour tout ce que l'on veu link:

Exemple:

```bash
stow nvim
```


stow tmux
stow zsh

ps: pour neovim installer fzf et ripgrep
