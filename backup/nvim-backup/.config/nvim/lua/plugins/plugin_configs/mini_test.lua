require("mini.test").setup({})

vim.keymap.set('n', '<leader>ta', function() MiniTest.run() end, { desc = "Test All (mini.test)" })
vim.keymap.set('n', '<leader>tf', function() MiniTest.run_file() end, { desc = "Test File (mini.test)" })
vim.keymap.set('n', '<leader>tt', function() MiniTest.run_at_location() end, { desc = "Test This (mini.test)" })
