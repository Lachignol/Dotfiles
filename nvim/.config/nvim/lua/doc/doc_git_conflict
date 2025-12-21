--[[
Raccourcis clavier git-conflict.nvim - Résolution de conflits Git

Les mappings par défaut (activés si default_mappings = true) dans un buffer en conflit :

co     - Choisir la version locale (ours)
ct     - Choisir la version distante (theirs)
cb     - Choisir les deux versions (both)
c0     - Ne choisir aucune version (none)
]x     - Aller au conflit suivant
[x     - Aller au conflit précédent

Commandes vim associées (exemple : :GitConflictChooseOurs) :

  :GitConflictChooseOurs      -- Choisir la version "ours" (locale)
  :GitConflictChooseTheirs    -- Choisir la version "theirs" (distante)
  :GitConflictChooseBoth      -- Conserver les deux versions
  :GitConflictChooseNone      -- Supprimer les deux versions (aucune retenue)
  :GitConflictNextConflict    -- Aller au conflit suivant
  :GitConflictPrevConflict    -- Aller au conflit précédent
  :GitConflictListQf          -- Liste tous les conflits dans la quickfix

Utilisation :

- Naviguez dans le buffer en conflit.
- Utilisez les raccourcis pour choisir quelle version vous souhaitez valider.
- Parcourez les conflits avec ]x et [x.
- Ouvrez la liste complète des conflits avec <leader>gcq.
- Résolvez tous les conflits puis sauvegardez / committez.

Ces bindings sont buffer-local dans les fichiers en conflit, évitant ainsi d’encombrer la navigation hors conflit.

Références :
https://github.com/akinsho/git-conflict.nvim

--]]

