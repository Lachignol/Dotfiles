vim.api.nvim_create_autocmd("FileType", {
	pattern = { "markdown", "text" },
	callback = function()
		vim.opt_local.spell = false
	end,
})

-- Crée un autocommand qui s'exécute lors de la sortie du mode insertion ou à l'entrée dans une fenêtre
vim.api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, {
	pattern = "*",       -- s'applique à toutes les fenêtres
	command = "set cursorline" -- active la surbrillance de la ligne du curseur
})

-- Crée un autocommand qui s'exécute quand on quitte une fenêtre
vim.api.nvim_create_autocmd({ "WinLeave" }, {
	pattern = "*",         -- s'applique à toutes les fenêtres
	command = "set nocursorline" -- désactive la surbrillance de la ligne du curseur
})
