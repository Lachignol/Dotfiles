require("smear_cursor").setup({
	smear_between_buffers = true,
	smear_between_neighbor_lines = true,
	scroll_buffer_space = true,
	legacy_computing_symbols_support = false,
	smear_insert_mode = true,

	-- Optionnel : couleur du curseur smear (par défaut la couleur du curseur GUI)
	-- cursor_color = "#d3cdc3",

	-- D'autres options de réglage dynamique possibles :
	-- stiffness = 0.8,
	-- trailing_stiffness = 0.6,
	-- damping = 0.95,
})
