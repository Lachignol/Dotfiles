require("mini.pick").setup({
	mappings = {
		move_down = "<C-n>",
		move_up = "<C-p>",
		toggle_preview = "<Tab>",
		choose = "<CR>",
		choose_marked = "<C-q>",
		mark = "<C-x>",
		stop = "<Esc>",
	},
	window = {
		config = function()
			local height = math.floor(vim.o.lines * 0.6)
			local width = math.floor(vim.o.columns * 0.7)

			return {
				relative = "editor",
				anchor = "NW",
				row = math.floor((vim.o.lines - height) / 2),
				col = math.floor((vim.o.columns - width) / 2),
				width = width,
				height = height,
				border = "single",
			}
		end,
		-- Pour modifier le message du prompt
		prompt_prefix = 'Search:',
	},
	options = {
		use_cache = true,
	},

})
-- Keymaps pour ouvrir les pickers mini.pick intégrés
vim.keymap.set('n', '<leader><leader>', ":Pick files<CR>", { desc = "Chercher fichier" })
vim.keymap.set('n', '<leader>g<leader>', ":Pick grep_live<CR>", { desc = "Chercher grep" })
vim.keymap.set('n', '<leader>h<leader>', ":Pick help<CR>", { desc = "Chercher help" })
vim.keymap.set("n", "<leader>.", function()
	local ok = pcall(function()
		vim.cmd("Pick resume")
	end)
	if not ok then
		vim.notify("Aucun historique mini.pick", vim.log.levels.WARN)
	end
end, { desc = "Revenir à la dernière recherche" })
