-- settings/specifique_lsp_clangd.lua
vim.lsp.config("clangd", {
	handlers = {
		["textDocument/publishDiagnostics"] = function(err, result, ctx, config)
			if not result or not result.diagnostics then
				return vim.lsp.handlers["textDocument/publishDiagnostics"](err, result, ctx, config)
			end

			local client = vim.lsp.get_client_by_id(ctx.client_id)
			if client and client.name == "clangd" then
				local filtered = {}
				for _, diag in ipairs(result.diagnostics) do
					if not diag.message:find("Included header") then
						table.insert(filtered, diag)
					end
				end
				result.diagnostics = filtered
			end

			vim.lsp.handlers["textDocument/publishDiagnostics"](err, result, ctx, config)
		end,
	},
})

-- vim.lsp.enable("clangd")
