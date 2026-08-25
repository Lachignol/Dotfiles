-- Limiter la taille du menu déroulant pour améliorer les performances visuelles (nbr d'element visible sans scroller dans la liste)
vim.opt.pumheight = 10

require('mini.completion').setup({
	delay = { completion = 250, info = 250, signature = 50 },
	window = {
		info = { height = 25, width = 80, border = 'rounded' },
		signature = { height = 25, width = 80, border = 'rounded' },
	},
	lsp_completion = {
		source_func = 'omnifunc',
		auto_setup = true,
		process_items = function(items, base)
			for _, item in ipairs(items) do
				-- On retire uniquement les espaces au début et à la fin pour un bon alignement
				if item.label then
					item.label = item.label:match("^%s*(.-)%s*$")
				end
			end
			-- -- Mettre les snippets en priorité (valeur > 100 par défaut) pour les afficher en haut
			-- local opts = { kind_priority = { Snippet = 110 } }
			-- return require('mini.completion').default_process_items(items, base, opts)
			return require('mini.completion').default_process_items(items, base)
		end,
	},
	fallback_action = '<C-n>', -- Fallback aux mots du buffer si le LSP/Snippets ne trouvent rien
	set_vim_settings = true, -- configure automatiquement completeopt (menuone, noselect par défaut)
})

-- Keymap pour forcer l'autocomplétion (remplace l'ancien trigger natif)
vim.keymap.set('i', '<C-Space>', 'mini.completion.force_twostep()', { expr = true, desc = "Déclencher mini.completion" })
