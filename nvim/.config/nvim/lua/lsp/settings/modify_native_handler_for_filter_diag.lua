local M = {}

M.setup = function()
	-- Sauvegarder le handler original
	local original_handler = vim.lsp.handlers["textDocument/publishDiagnostics"]

	vim.lsp.handlers["textDocument/publishDiagnostics"] = function(err, result, ctx, config)
		if not result or not result.diagnostics then
			return original_handler(err, result, ctx, config)
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

		-- Appeler le handler original avec les diagnostics filtrés
		original_handler(err, result, ctx, config)
	end
end

return M
