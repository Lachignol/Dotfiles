-- lua/autocompletion.lua
local M = {}
function M.setup()
	vim.opt.completeopt = { "menuone", "noselect", "noinsert", "popup" }
	vim.api.nvim_create_autocmd('LspAttach', {
		group = vim.api.nvim_create_augroup('my.lsp', {}),
		callback = function(args)
			local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
			local buf = args.buf
			if client then
				require("lsp.settings.on_attach_keymap_for_lsp").on_attach(client, buf)
			end
			if client:supports_method('textDocument/completion') then
				local chars = {}
				for i = 32, 126 do table.insert(chars, string.char(i)) end
				client.server_capabilities.completionProvider.triggerCharacters = chars
				vim.lsp.completion.enable(true, client.id, buf, { autotrigger = true })
			end
		end
	})

	vim.keymap.set("i", "<C-Space>", function()
		vim.lsp.buf.completion()
	end, { desc = "Déclencher la complétion LSP" })
end

return M

-- -- lua/autocompletion.lua
-- local M = {}
--
-- function M.setup()
-- 	vim.opt.completeopt = { "menuone", "noselect", "popup", "noinsert" }
--
-- 	vim.api.nvim_create_autocmd('LspAttach', {
-- 		group = vim.api.nvim_create_augroup('my.lsp', {}),
-- 		callback = function(args)
-- 			local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
-- 			local buf = args.buf
-- 			if client then
-- 				require("lsp.settings.on_attach_keymap_for_lsp").on_attach(client, buf)
-- 			end
-- 			if client:supports_method('textDocument/completion') then
-- 				local chars = {}
-- 				for i = 32, 126 do table.insert(chars, string.char(i)) end
-- 				client.server_capabilities.completionProvider.triggerCharacters = chars
-- 				vim.lsp.completion.enable(true, client.id, buf, { autotrigger = true })
-- 			end
-- 		end
-- 	})
--
-- 	vim.keymap.set("i", "<C-Space>", function()
-- 		vim.lsp.buf.completion()
-- 	end, { desc = "Déclencher la complétion LSP" })
-- end
--
-- return M
