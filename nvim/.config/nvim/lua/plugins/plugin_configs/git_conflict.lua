require('git-conflict').setup({
	default_mappings = true,
	list_opener = 'copen', -- Ouvre automatiquement la quickfix
})


-- Supression de la commande par default qui est pas top
vim.api.nvim_del_user_command('GitConflictListQf')
-- Keymaps
-- Fonction personel pour ajouter les conflit dans la quickfix
vim.keymap.set('n', '<leader>lgc', '<cmd>GitConflicts<cr>',
	{ desc = '(GIT) Liste TOUS les conflits' })
-- Navigation fichiers (quickfix)
vim.keymap.set('n', ']q', '<cmd>cnext<cr>zz',
	{ desc = '(GIT) Fichier conflit suivant' })
vim.keymap.set('n', '[q', '<cmd>cprev<cr>zz',
	{ desc = '(GIT) Fichier conflit précédent' })
-- Navigation conflits (dans le fichier)
vim.keymap.set('n', ']x', '<cmd>GitConflictNextConflict<cr>',
	{ desc = '(GIT) Conflit suivant' })
vim.keymap.set('n', '[x', '<cmd>GitConflictPrevConflict<cr>',
	{ desc = '(GIT) Conflit précédent' })
-- Résolution
vim.keymap.set('n', '<leader>co', '<cmd>GitConflictChooseOurs<cr>',
	{ desc = '(GIT) Garder notre version' })
vim.keymap.set('n', '<leader>ct', '<cmd>GitConflictChooseTheirs<cr>',
	{ desc = '(GIT) Garder leur version' })
vim.keymap.set('n', '<leader>cb', '<cmd>GitConflictChooseBoth<cr>',
	{ desc = '(GIT) Garder les deux' })
vim.keymap.set('n', '<leader>cn', '<cmd>GitConflictChooseNone<cr>',
	{ desc = '(GIT) Garder aucun' })
