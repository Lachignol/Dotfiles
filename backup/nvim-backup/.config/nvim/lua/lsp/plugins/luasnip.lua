local ls = require("luasnip")

-- Configuration principale
ls.setup({ enable_autosnippets = true })

-- Charge les snippets personnalisés Lua
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets/" })

-- Charge les snippets VS Code (ex: friendly-snippets)
require("luasnip.loaders.from_vscode").lazy_load()

-- Keymap pour étendre un snippet ou sauter au champ suivant
vim.keymap.set("i", "<C-y>", function() ls.expand_or_jump() end, {
	silent = true, desc = "Étendre snippet ou jump"
})

-- Keymap pour sauter au champ suivant dans un snippet (mode insertion et sélection)
vim.keymap.set({ "i", "s" }, "<C-j>", function() ls.jump(1) end, {
	silent = true, desc = "Snippet: champ suivant"
})

-- Keymap pour sauter au champ précédent dans un snippet (mode insertion et sélection)
vim.keymap.set({ "i", "s" }, "<C-k>", function() ls.jump(-1) end, {
	silent = true, desc = "Snippet: champ précédent"
})
