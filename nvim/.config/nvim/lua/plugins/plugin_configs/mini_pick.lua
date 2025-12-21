require("mini.pick").setup({
	mappings = {
		move_down = "<C-n>",
		move_up = "<C-p>",
		toggle_preview = "<Tab>",
		choose = "<CR>",
		choose_marked = "<C-G>",
		mark = "<C-y>",
		stop = "<Esc>",
	},
})
-- Keymaps pour ouvrir les pickers mini.pick intégrés
vim.keymap.set('n', '<leader><leader>', ":Pick files<CR>", { desc = "Chercher fichier" })
vim.keymap.set('n', '<leader>g', ":Pick grep_live<CR>", { desc = "Chercher grep" })
vim.keymap.set('n', '<leader>h', ":Pick help<CR>", { desc = "Chercher help" })
