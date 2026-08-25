require('gitblame').setup {
	--Note how the `gitblame_` prefix is omitted in `setup`
	enabled = false,
}
vim.keymap.set('n', '<leader>gb', '<cmd>GitBlameToggle<cr>', {
	desc = '(GIT) Toggle git blame',
	silent = true,
})
