local gen_loader = require('mini.snippets').gen_loader
local snippet_dir = vim.fn.stdpath('config') .. '/lua/snippets/'

require('mini.snippets').setup({
	snippets = {
		-- Charger les snippets VS Code (friendly-snippets) pour le langage courant
		gen_loader.from_lang(),

		-- Charger nos snippets JSON personnalisés depuis le dossier lua/snippets/
		gen_loader.from_file(snippet_dir .. 'global.json'),
		gen_loader.from_file(snippet_dir .. 'go.json'),
		gen_loader.from_file(snippet_dir .. 'c.json'),
		gen_loader.from_file(snippet_dir .. 'cpp.json'),
	},
	expand = {
		-- Configuration pour supprimer les "•" et "∎" définitivement
		insert = function(snippet)
			return require('mini.snippets').default_insert(snippet, {
				empty_tabstop = '', -- Plus de point
				empty_tabstop_final = '' -- Plus de curseur bloc
			})
		end
	},
	mappings = {
		-- On désactive l'expansion globale pour éviter d'ouvrir le picker de recherche de snippets avec C-j
		expand = '',
		-- C-j sert uniquement à sauter au champ suivant une fois DANS le snippet
		jump_next = '<C-j>',
		jump_prev = '<C-k>',
	}
})

-- Démarrer le serveur interne LSP pour que les snippets apparaissent dans le menu de complétion
require('mini.snippets').start_lsp_server()

-- Nettoyage de la session quand on quitte le mode insertion
vim.api.nvim_create_autocmd('ModeChanged', {
	pattern = '*:n',
	callback = function()
		local MiniSnippets = require('mini.snippets')
		while MiniSnippets.session.get() do
			MiniSnippets.session.stop()
		end
	end,
})
