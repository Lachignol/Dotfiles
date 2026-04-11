require "oil".setup({
	float = {
		-- Padding around the floating window
		padding = 4,
		-- max_width and max_height can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
		max_width = 0,
		max_height = 0,
		border = nil,
		win_options = {
			winblend = 0,
		},
		-- preview_split: Split direction: "auto", "left", "right", "above", "below".
		preview_split = "right",
	},
})
vim.keymap.set('n', '<leader>e', function()
	local float_win = nil
	for _, win in ipairs(vim.api.nvim_list_wins()) do
		local buf = vim.api.nvim_win_get_buf(win)
		local ft = vim.bo[buf].filetype
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


-- CONFIG nORMAL SETUP OUVRE OIL DANS UN BUFFER ET POUR REVENIR AU BUFFER D'AVANT CTRL -C
-- require("oil").setup({})
--
-- vim.keymap.set("n", "<leader>e", function()
-- 	require("oil").open(nil, { split = "left" })
-- end, { desc = "Ouvrir oil" })
