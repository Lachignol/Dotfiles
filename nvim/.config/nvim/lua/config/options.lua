vim.opt.number = true             -- Active les numéros absolus globalement
vim.opt.relativenumber = true     -- Active les numéros relatifs globalement
vim.opt.expandtab = false
vim.opt.cursorline = true         -- Highlight the current line
vim.opt.clipboard = "unnamedplus" -- on utilise le presse papier du système par défaut
vim.opt.signcolumn = "yes"
vim.opt.winborder = "rounded"
-- -- Active lazyredraw pour réduire le nombre de redraws inutiles
-- -- Ce réglage améliore la fluidité du scroll, notamment lors de l'exécution de macros ou de défilements rapides,
-- -- en évitant de rafraîchir l'écran plus que nécessaire.
-- vim.opt.lazyredraw = true


----------------------HISTORY----------------------
-- Gestion de l'historique d'annulation
-- Active la persistance de l'historique d'annulation
vim.opt.undofile = true
--Définit 10000 niveaux d'annulation
vim.opt.undolevels = 10000
--Stocke les fichiers d'annulation dans le répertoire de données de Neovim
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
-- Mise à jour plus fréquente
vim.opt.updatetime = 200
-- Augmentation de l'historique de commandes
vim.opt.history = 100

----------------------SWAP-FILE--------------------
-- Désactivation des fichiers swap
vim.opt.swapfile = false
