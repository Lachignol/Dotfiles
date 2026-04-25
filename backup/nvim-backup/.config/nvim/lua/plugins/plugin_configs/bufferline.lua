require('bufferline').setup({
	options = {
		mode = "buffers",          -- Affiche la liste des buffers ouverts
		separator_style = { "", "" }, -- pas de séparateurs visibles
		-- separator_style = "slant", -- Style simple et esthétique des séparateurs
		offsets = { { filetype = "NvimTree" } }, -- Décale la bufferline pour la sidebar NvimTree
		show_buffer_close_icons = false, -- Affiche les icônes de fermeture des buffers
		show_close_icon = false,   -- N’affiche pas l’icône de fermeture globale
		enforce_regular_tabs = false, -- Ne force pas la largeur régulière des onglets
		always_show_bufferline = false -- Affiche toujours la bufferline
	}
})
