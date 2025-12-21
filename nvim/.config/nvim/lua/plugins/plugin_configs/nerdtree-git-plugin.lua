-- Pas besoin d'appeler vim.cmd packadd si déjà chargé globalement

-- Option recommandée pour utiliser les icônes Nerd Fonts (vous devez avoir les polices installées)
vim.g.NERDTreeGitStatusUseNerdFonts = 1

-- Afficher aussi les fichiers git ignorés (option potentiellement lente)
vim.g.NERDTreeGitStatusShowIgnored = 1

-- Mode pour afficher les fichiers non suivis dans un dossier git (par défaut normal)
vim.g.NERDTreeGitStatusUntrackedFilesMode = "all"

-- Option pour cacher les crochets autour des statuts git (ex. [M])
vim.g.NERDTreeGitStatusConcealBrackets = 1

-- Pas de mappings Lua nécessaires, le plugin s’active automatiquement avec NERDTree
