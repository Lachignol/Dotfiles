vim.api.nvim_create_autocmd("FileType", {
	pattern = { "markdown", "text" },
	callback = function()
		vim.opt_local.spell = false
	end,
})

-- Crée un autocommand qui s'exécute lors de la sortie du mode insertion ou à l'entrée dans une fenêtre
vim.api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, {
	pattern = "*",      -- s'applique à toutes les fenêtres
	command = "set cursorline" -- active la surbrillance de la ligne du curseur
})

-- Crée un autocommand qui s'exécute quand on quitte une fenêtre
vim.api.nvim_create_autocmd({ "WinLeave" }, {
	pattern = "*",        -- s'applique à toutes les fenêtres
	command = "set nocursorline" -- désactive la surbrillance de la ligne du curseur
})

-- highlight yank
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
	pattern = "*",
	desc = "highlight selection on yank",
	callback = function()
		vim.highlight.on_yank({ timeout = 200, visual = true })
	end,
})

-- restore la position dernier postion du curseur a l'ouverture du buffer
vim.api.nvim_create_autocmd("BufReadPost", {
	callback = function(args)
		local mark = vim.api.nvim_buf_get_mark(args.buf, '"')
		local line_count = vim.api.nvim_buf_line_count(args.buf)
		if mark[1] > 0 and mark[1] <= line_count then
			vim.api.nvim_win_set_cursor(0, mark)
			vim.schedule(function()
				vim.cmd("normal! zz")
			end)
		end
	end,
})

-- ouvre l'aide a la vertical et non a l'horizontal
vim.api.nvim_create_autocmd("FileType", {
	pattern = "help",
	command = "wincmd L",
})

-- resize automatique des win split lorsaue l'on resize nvim
vim.api.nvim_create_autocmd("VimResized", {
	command = "wincmd =",
})

-- Desactive la continuation automatique des commentaire quand on cree une nouvelle ligne
vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("no_auto_comment", {}),
	callback = function()
		vim.opt_local.formatoptions:remove({ "c", "r", "o" })
	end,
})
