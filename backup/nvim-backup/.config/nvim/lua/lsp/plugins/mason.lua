require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})


-- Setup l'installateur automatique
require("mason-tool-installer").setup({
	ensure_installed = {
		"lua-language-server",
		"css-lsp",
		"html-lsp",
		"typescript-language-server",
		"clangd",
		"tinymist",
		"gopls",
		-- a l'ecole 42 comme libc date de clovis faire a la main :MasonInstall tree-sitter-cli@v0.24.7
		"tree-sitter-cli",
	},
	run_on_start = true,
	auto_update = false,
})



require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"cssls",
		"html",
		"ts_ls",
		"clangd",
		"tinymist",
		"gopls",
	},
	automatic_enable = true, -- Active automatiquement les LSP
})
