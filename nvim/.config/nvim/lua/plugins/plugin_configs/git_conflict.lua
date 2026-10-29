require('git-conflict').setup({
    default_mappings = true,
    default_commands = true,
    list_opener = 'copen',
})

-- Liste de tous les conflits
vim.keymap.set('n', '<leader>gcl', '<cmd>GitConflictListQf<cr>', {
    desc = '(GIT) List all conflicts',
})

-- Navigation dans la quickfix
vim.keymap.set('n', ']q', '<cmd>cnext<cr>zz', {
    desc = '(GIT) Next file in quickfix',
})

vim.keymap.set('n', '[q', '<cmd>cprev<cr>zz', {
    desc = '(GIT) Previous file in quickfix',
})

-- Navigation entre les conflits
vim.keymap.set('n', ']x', '<cmd>GitConflictNextConflict<cr>', {
    desc = '(GIT) Next conflict',
})

vim.keymap.set('n', '[x', '<cmd>GitConflictPrevConflict<cr>', {
    desc = '(GIT) Previous conflict',
})

-- Résolution des conflits
vim.keymap.set('n', '<leader>gco', '<cmd>GitConflictChooseOurs<cr>', {
    desc = '(GIT) Keep our version',
})

vim.keymap.set('n', '<leader>gct', '<cmd>GitConflictChooseTheirs<cr>', {
    desc = '(GIT) Keep their version',
})

vim.keymap.set('n', '<leader>gcb', '<cmd>GitConflictChooseBoth<cr>', {
    desc = '(GIT) Keep both versions',
})

vim.keymap.set('n', '<leader>gcn', '<cmd>GitConflictChooseNone<cr>', {
    desc = '(GIT) Keep neither version',
})
