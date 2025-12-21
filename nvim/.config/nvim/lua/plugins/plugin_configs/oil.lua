require "oil".setup()
vim.keymap.set('n', '<leader>e', function()
	local float_win = nil
	for _, win in ipairs(vim.api.nvim_list_wins()) do
		local buf = vim.api.nvim_win_get_buf(win)
		local ft = vim.api.nvim_buf_get_option(buf, "filetype")
		if ft == "oil" then
			float_win = win
			break
		end
	end

	if float_win then
		vim.api.nvim_win_close(float_win, true) -- ferme la fenêtre Oil flottante
	else
		require("oil").open_float() -- ouvre Oil en floating window
	end
end, { desc = "Ouvrir oil" })
