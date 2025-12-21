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
        "gopls",
        "clangd",
	"tinymist",
    },
    run_on_start = true,
})

require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls", 
        "cssls",
        "html",
        "ts_ls",
        "gopls",
        "clangd",
	"tinymist",
    },
    handlers = {
        function(server_name)
            require("lspconfig")[server_name].setup({
                on_attach = require("lsp.on_attach").on_attach,
            })
        end,
    },
})

