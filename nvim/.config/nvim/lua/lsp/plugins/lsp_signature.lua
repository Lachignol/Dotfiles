require('lsp_signature').setup({
	bind = true,
	floating_window = true,
	hint_enable = true,
	hint_prefix = "📟 Lachignol:  ",
	handler_opts = {
		border = "rounded"
	},
	toggle_key = '<C-k>',
})

vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('lsp_signature_setup', {}),
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		local buf = args.buf
		require('lsp_signature').on_attach(client, buf)
	end,
})
