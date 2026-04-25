vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	-- { src = "https://github.com/folke/lazydev.nvim",                       ft = "lua" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
	{ src = "https://github.com/ray-x/lsp_signature.nvim" },
	{ src = "https://github.com/L3MON4D3/LuaSnip" },
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
	-- pour treesitter decommenter
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

-- lsp avec config specifique
-- require("lsp.plugins.lazydev")
-- plus besoin avec lazydev pour lua
require("lsp.specifique_lsp.lua")
require("lsp.specifique_lsp.clangd")
-- Installation et activation de tout les lsp avec Mason
require("lsp.plugins.mason")
-- Activation des diags et de l'autocompletion
require("lsp.settings.diagnostics").setup()
require("lsp.settings.autocompletion").setup()
-- Plugin lie au lsp
require("lsp.plugins.luasnip")
require("lsp.plugins.lsp_signature")

-- pour treesitter decommenter
require("lsp.plugins.treesitter")
