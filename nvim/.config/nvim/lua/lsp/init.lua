vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
	{ src = "https://github.com/ray-x/lsp_signature.nvim" },
	{ src = "https://github.com/L3MON4D3/LuaSnip" },
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

require("lsp.settings.plugins.luasnip")
require("lsp.settings.plugins.mason")
require("lsp.settings.plugins.lsp_signature")
require("lsp.settings.diagnostics").setup()
require("lsp.settings.modify_native_handler_for_filter_diag").setup()
require("lsp.settings.autocompletion").setup()
require("lsp.settings.plugins.treesitter")
