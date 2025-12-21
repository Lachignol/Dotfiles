require('mini.clue').setup({
	triggers = {
		-- Leader en normal et visual
		{ mode = 'n', keys = '<Leader>' },
		{ mode = 'x', keys = '<Leader>' },
		-- Clés g pour grep/mini.pick
		{ mode = 'n', keys = 'g' },
		-- Complétion intégrée
		{ mode = 'i', keys = '<C-x>' },
	},
	clues = {
		-- Détection automatique des keymaps avec desc
		require('mini.clue').gen_clues.builtin_completion(),
		require('mini.clue').gen_clues.g(),
		-- Groupes personnalisés (optionnel)
		{ mode = 'n', keys = '<Leader>b', desc = '+Buffers' },
		{ mode = 'n', keys = '<Leader>f', desc = '+Find' },
		{ mode = 'n', keys = '<Leader>w', desc = '+Fenêtres' },
	},
	-- Options fenêtre (optionnel)
	window = {
		delay = 200, -- Affichage après 500ms
	},
})
