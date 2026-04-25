-- settings/autocompletion.lua
local M = {}
function M.setup()
	-- vim.opt.completeopt = { "menuone", "noselect", "noinsert", "popup" }
	vim.api.nvim_create_autocmd('LspAttach', {
		group = vim.api.nvim_create_augroup('my.lsp', {}),
		callback = function(args)
			local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
			local buf = args.buf
			if client then
				require("lsp.settings.keymap_for_lsp").on_attach(client, buf)
			end


			-- L'autocomplétion native de Neovim 0.10+ (vim.lsp.completion.enable)
			-- permet de déclencher l'affichage du menu à CHAQUE frappe.
			-- Cependant, comme nous utilisons 'mini.completion' qui orchestre DÉJÀ
			-- les fonctions d'autocomplétion natives de Neovim (en y ajoutant des délais
			-- pour éviter que le menu ne clignote), nous laissons ce bloc commenté
			-- pour ne pas surcharger le système et éviter les conflits.


			-- if client:supports_method('textDocument/completion') then
			-- 	local chars = {}
			-- 	for i = 32, 126 do table.insert(chars, string.char(i)) end
			-- 	client.server_capabilities.completionProvider.triggerCharacters = chars
			-- 	vim.lsp.completion.enable(true, client.id, buf, { autotrigger = true })
			-- end
		end
	})

	-- On désactive le déclencheur manuel natif (remplacé par le <C-Space> de mini.completion)
	-- vim.keymap.set("i", "<C-Space>", function()
	-- 	vim.lsp.completion.trigger()
	-- end, { desc = "Déclencher la complétion LSP" })
end

return M
