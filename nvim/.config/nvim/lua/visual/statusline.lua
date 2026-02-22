-- CONFIGURATION DE LA STATUSLINE

-- StatusLine : Couleurs pour la fenêtre active
-- guibg = couleur de fond (#0a3d0a = vert foncé)
-- guifg = couleur du texte (#00d400 = vert vif)
-- gui=bold = texte en gras
vim.cmd('hi StatusLine guibg=#0a3d0a guifg=#00d400 gui=bold')

-- StatusLineNC : Couleurs pour les fenêtres non-actives (NC = Not Current)
-- guibg = couleur de fond (#081808 = presque noir)
-- guifg = couleur du texte (#00a000 = vert moins vif)
vim.cmd('hi StatusLineNC guibg=#081808 guifg=#00a000')

-- Pour enlever complètement la couleur de fond de la statusline :
-- vim.cmd(":hi statusline guibg=NONE")


-- CONTRÔLE D'AFFICHAGE DE LA STATUSLINE

-- laststatus : Contrôle quand afficher la statusline
-- 0 = jamais afficher
-- 1 = afficher seulement quand il y a plusieurs fenêtres
-- 2 = toujours afficher (recommandé)
-- 3 = afficher une statusline globale pour toutes les fenêtres
vim.opt.laststatus = 2


-- CONTENU DE LA STATUSLINE

-- Configuration actuelle : minimaliste
-- %f     = nom du fichier avec chemin relatif
-- %m     = indicateur de modification [+] si le fichier est modifié
-- %=     = sépare gauche/droite (tout après va à droite)
-- %l     = numéro de ligne actuelle
-- %c     = numéro de colonne
-- %p%%   = pourcentage dans le fichier (ex: 28%)
-- vim.opt.statusline = "%f %m %= %l:%c  %p%%"


-- TOUTES LES OPTIONS DISPONIBLES POUR LA STATUSLINE
-- ┌────────────────────────────────────────────────────────────────────┐
-- │ INFORMATIONS SUR LE FICHIER                                        │
-- └────────────────────────────────────────────────────────────────────┘
--
-- %f     Chemin relatif du fichier          Ex: lua/visual/statusline.lua
-- %F     Chemin absolu complet              Ex: /Users/scordi/.../statusline.lua
-- %t     Nom du fichier uniquement          Ex: statusline.lua
-- %m     Indicateur de modification         Ex: [+] si modifié, vide sinon
-- %M     Indicateur modif (verbose)         Ex: [+] modifié, [-] non-modifiable
-- %r     Indicateur readonly                Ex: [RO] si lecture seule
-- %R     Indicateur readonly (verbose)      Ex: [RO] ou vide
-- %h     Indicateur d'aide                  Ex: [Help] si buffer d'aide
-- %w     Indicateur preview                 Ex: [Preview] si fenêtre preview
-- %q     Type de liste rapide               Ex: [Quickfix] ou [Location]

-- ┌────────────────────────────────────────────────────────────────────┐
-- │ POSITION ET NAVIGATION                                              │
-- └────────────────────────────────────────────────────────────────────┘
--
-- %l     Numéro de ligne actuelle           Ex: 42
-- %L     Nombre total de lignes             Ex: 150
-- %c     Numéro de colonne                  Ex: 15
-- %v     Numéro de colonne virtuelle        Ex: 15 (compte différemment les tabs)
-- %V     Colonne virtuelle si différente    Ex: -5 ou vide
-- %p     Pourcentage dans le fichier        Ex: 28 (sans le symbole %)
-- %p%%   Pourcentage avec symbole           Ex: 28%
-- %P     Pourcentage ou Top/Bot/All         Ex: Top, 28%, Bot ← C'est ça qui affiche "bot" !
-- %o     Offset du byte depuis début        Ex: 1234
-- %O     Offset hexadécimal                 Ex: 0x04d2

-- ┌────────────────────────────────────────────────────────────────────┐
-- │ TYPE DE FICHIER ET ENCODAGE                                         │
-- └────────────────────────────────────────────────────────────────────┘
--
-- %y                Type de fichier entre crochets    Ex: [lua], [vim], [python]
-- %Y                Type de fichier sans crochets     Ex: lua
-- %{&fileencoding}  Encodage du fichier               Ex: utf-8, latin1
-- %{&encoding}      Encodage interne                  Ex: utf-8
-- %{&fileformat}    Format de fichier                 Ex: unix, dos, mac

-- ┌────────────────────────────────────────────────────────────────────┐
-- │ FORMATAGE ET ALIGNEMENT                                             │
-- └────────────────────────────────────────────────────────────────────┘
--
-- %=         Séparateur gauche/droite - tout après va à droite
-- %<         Point de troncature si ligne trop longue
-- %-10.20f   Largeur min 10, max 20 caractères, aligné à gauche
-- %10.20f    Largeur min 10, max 20 caractères, aligné à droite

-- ┌────────────────────────────────────────────────────────────────────┐
-- │ BUFFER ET FENÊTRE                                                   │
-- └────────────────────────────────────────────────────────────────────┘
--
-- %n     Numéro de buffer                   Ex: 3
-- %a     Argument list status               Ex: (5 of 10)

-- ┌────────────────────────────────────────────────────────────────────┐
-- │ AUTRES                                                              │
-- └────────────────────────────────────────────────────────────────────┘
--
-- %%             Le caractère % littéral
-- %{expression}  Évalue une expression Lua/Vim


-- ========================================================================
-- EXEMPLES DE CONFIGURATIONS
-- ========================================================================

-- ┌─ Exemple 1 : Minimaliste (actuel) ─────────────────────────────────┐
-- vim.opt.statusline = "%f %m %= %l:%c  %p%%"
-- Résultat: options.lua [+]                    42:15  28%
-- └────────────────────────────────────────────────────────────────────┘

-- ┌─ Exemple 2 : Matrix Style avec caractères spéciaux ────────────────┐
-- vim.opt.statusline = "▌ %f %m%r %= %y  %l/%L:%c  %p%% ▌"
-- Résultat: ▌ options.lua [+]      [lua]  42/150:15  28% ▌
-- └────────────────────────────────────────────────────────────────────┘

-- ┌─ Exemple 3 : Complet et informatif ────────────────────────────────┐
-- vim.opt.statusline = "%f %m%r%h%w %= %y | %{&fileencoding?&fileencoding:&encoding} | %{&fileformat} | %l:%c | %p%%"
-- Résultat: options.lua [+]      [lua] | utf-8 | unix | 42:15 | 28%
-- └────────────────────────────────────────────────────────────────────┘

-- ┌─ Exemple 4 : Style hacker/terminal ────────────────────────────────┐
-- vim.opt.statusline = "[%n] %f %m %= %y %l/%L:%c %P"
-- Résultat: [3] options.lua [+]      [lua] 42/150:15 Bot
-- └────────────────────────────────────────────────────────────────────┘

-- ┌─ Exemple 5 : Ultra minimaliste ────────────────────────────────────┐
-- vim.opt.statusline = "%f %= %l:%c"
-- Résultat: options.lua                              42:15
-- └────────────────────────────────────────────────────────────────────┘

-- ┌─ Exemple 6 : Avec fonction personnalisée Git branch ───────────────┐
function GitBranch()
	local branch = vim.fn.system("git branch --show-current 2>/dev/null | tr -d '\n'")
	if branch ~= "" then
		return " " .. "[" .. branch .. "]"
	else
		return ""
	end
end

vim.opt.statusline = "%f%{v:lua.GitBranch()} %m %= %l:%c %p%%"
-- Résultat: options.lua [main] [+]                42:15 28%
-- └────────────────────────────────────────────────────────────────────┘
