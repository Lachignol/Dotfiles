require("toggleterm").setup({
	size = 20,
	open_mapping = nil, -- on désactive le mapping par défaut
	shade_terminals = true,
	direction = "float",
	float_opts = {
		border = "curved",
		winblend = 0,
	},
})

local Terminal        = require('toggleterm.terminal').Terminal
local float_term      = Terminal:new({ direction = "float", hidden = true })
local vertical_term   = Terminal:new({ direction = "vertical", hidden = true })
local horizontal_term = Terminal:new({ direction = "horizontal", hidden = true })

vim.keymap.set("n", "<C-\\>", function()
	float_term:toggle()
end, { desc = "Ouvrir terminal flottant" })

vim.keymap.set("n", "<C-|>", function()
	vertical_term:toggle()
end, { desc = "Ouvrir terminal vertical" })

vim.keymap.set("n", "<C-/>", function()
	horizontal_term:toggle()
end, { desc = "Ouvrir terminal horizontal" })
