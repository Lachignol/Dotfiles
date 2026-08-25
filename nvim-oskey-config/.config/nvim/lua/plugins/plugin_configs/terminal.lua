require("toggleterm").setup({
	size = 10,
	open_mapping = nil, -- on désactive le mapping par défaut
	shade_terminals = true,
	direction = "horizontal",
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
end, { desc = "Open floating terminal" })

vim.keymap.set("n", "<C-|>", function()
	vertical_term:toggle()
end, { desc = "Open vertical terminal" })

vim.keymap.set("n", "<C-/>", function()
	horizontal_term:toggle()
end, { desc = "Open horizontal terminal" })

-- Si tu veux envoyer un vrai Esc au terminal (rarement utile)
-- vim.keymap.set("t", "<M-[>", "<Esc>", { desc = "Envoyer Esc au terminal" })
