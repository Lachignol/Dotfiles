require('git-conflict').setup({
	default_mappings = false,
	default_commands = true,
	disable_diagnostics = false,
	list_opener = "copen",
	highlights = {
		incoming = "DiffAdd",
		current = "DiffText",
	},
})

vim.keymap.set("n", "<leader>co", "<Plug>(git-conflict-ours)", {
	noremap = true, silent = true, desc = "Conflit: nôtre"
})
vim.keymap.set("n", "<leader>ct", "<Plug>(git-conflict-theirs)", {
	noremap = true, silent = true, desc = "Conflit: leur"
})
vim.keymap.set("n", "<leader>cb", "<Plug>(git-conflict-both)", {
	noremap = true, silent = true, desc = "Conflit: les deux"
})
vim.keymap.set("n", "<leader>c0", "<Plug>(git-conflict-none)", {
	noremap = true, silent = true, desc = "Conflit: aucun"
})
vim.keymap.set("n", "]x", "<Plug>(git-conflict-next-conflict)", {
	noremap = true, silent = true, desc = "Conflit suivant"
})
vim.keymap.set("n", "[x", "<Plug>(git-conflict-prev-conflict)", {
	noremap = true, silent = true, desc = "Conflit précédent"
})
