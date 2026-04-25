require('git-conflict').setup({
	default_mappings = true,
	list_opener = 'copen', -- Ouvre automatiquement la quickfix
})


-- Supression de la commande par default qui est pas top
vim.api.nvim_del_user_command('GitConflictListQf')
-- Keymaps
-- Fonction personel pour ajouter les conflit dans la quickfix
vim.keymap.set('n', '<leader>gcl', '<cmd>GitConflicts<cr>',
	{ desc = '(GIT) List ALL conflicts' })
-- -- Navigation fichiers (quickfix)
-- vim.keymap.set('n', ']q', '<cmd>cnext<cr>zz',
-- 	{ desc = '(GIT) File next conflict ' })
-- vim.keymap.set('n', '[q', '<cmd>cprev<cr>zz',
-- 	{ desc = '(GIT) File previous conflict' })
-- -- Navigation conflits (dans le fichier)
-- vim.keymap.set('n', ']x', '<cmd>GitConflictNextConflict<cr>',
-- 	{ desc = '(GIT) Next conflict' })
-- vim.keymap.set('n', '[x', '<cmd>GitConflictPrevConflict<cr>',
-- 	{ desc = '(GIT) Previous conflict' })
-- Résolution
vim.keymap.set('n', '<leader>gco', '<cmd>GitConflictChooseOurs<cr>',
	{ desc = '(GIT) Keep our version' })
vim.keymap.set('n', '<leader>gct', '<cmd>GitConflictChooseTheirs<cr>',
	{ desc = '(GIT) Keep there version' })
vim.keymap.set('n', '<leader>gcb', '<cmd>GitConflictChooseBoth<cr>',
	{ desc = '(GIT) Keep both' })
vim.keymap.set('n', '<leader>gcn', '<cmd>GitConflictChooseNone<cr>',
	{ desc = '(GIT) Keep none' })
