vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/folke/lazydev.nvim",                       ft = "lua" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
	{ src = "https://github.com/echasnovski/mini.completion" },
	{ src = "https://github.com/echasnovski/mini.snippets" },
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
	-- pour treesitter decommenter
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

-- lsp avec config specifique
-- require("lsp.specifique_lsp.lua")
-- require("lsp.specifique_lsp.clangd")

-- plus besoin avec lazydev pour lua
require("lsp.plugins.lazydev")


-- Installation et activation de tout les lsp avec Mason
require("lsp.plugins.mason")

-- Activation des diags et de l'autocompletion
require("lsp.settings.diagnostics").setup()
require("lsp.settings.autocompletion").setup()

-- Plugin lie au lsp
require("lsp.plugins.mini_completion")
require("lsp.plugins.mini_snippets")

-- pour treesitter decommenter
require("lsp.plugins.treesitter")
