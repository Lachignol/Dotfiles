local zen = require("zen-mode")

zen.setup({
	window = {
		width = vim.o.columns,
		options = {
			number = true,
			relativenumber = true,
			signcolumn = "yes",
			cursorline = false, -- désactive la ligne du curseur
			cursorcolumn = false, -- désactive la colonne du curseur (ce qui cause souvent la "ligne" blanche verticale)
			foldcolumn = "0",
		},
	},
	plugins = {
		twilight = { enabled = true },
		gitsigns = { enabled = true },
	},
})

vim.keymap.set("n", "<leader>z", function() zen.toggle() end, { desc = "Concentration" })
