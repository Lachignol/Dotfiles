require("mini.extra").setup()
-- Keymaps pour ouvrir les pickers mini.pick extra
vim.keymap.set('n', '<leader>d<leader>', ":Pick diagnostic scope='current'<CR>", { desc = "Search local diags" })
vim.keymap.set('n', '<leader>D<leader>', ":Pick diagnostic scope='all'<CR>", { desc = "Search global diags" })
vim.keymap.set('n', '<leader>r<leader>', ":Pick registers <CR>", { desc = "Search in registers" })
vim.keymap.set('n', '<leader>m<leader>', ":Pick marks <CR>", { desc = "Search in marks" })
vim.keymap.set('n', '<leader>M<leader>', ":Pick manpages <CR>", { desc = "Search in manpages" })
