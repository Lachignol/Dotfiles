require('mini.clue').setup({
	triggers = {
		-- Leader en normal et visual
		{ mode = 'n', keys = '<Leader>' },
		{ mode = 'x', keys = '<Leader>' },
		-- Clés g pour grep/mini.pick
		{ mode = 'n', keys = 'g' },
		-- Complétion intégrée
		{ mode = 'i', keys = '<C-x>' },
 		-- MARKS
		    { mode = 'n', keys = 'm' },   -- Détecte ma, m], m:, mm...
		    { mode = 'n', keys = "'" },   -- Détecte 'a, 'b...
		    { mode = 'n', keys = '`' },   -- Détecte `a, `b...
		    { mode = 'n', keys = '"' },  -- registers
		    { mode = 'n', keys = 'z' },  -- folds
	},
	clues = {
		-- Détection automatique des keymaps avec desc
		require('mini.clue').gen_clues.builtin_completion(),
		require('mini.clue').gen_clues.g(),
 		require('mini.clue').gen_clues.marks(),
    require('mini.clue').gen_clues.registers(),
    require('mini.clue').gen_clues.windows(),
    require('mini.clue').gen_clues.z(),
		-- Groupes personnalisés (optionnel)
		{ mode = 'n', keys = '<Leader>b', desc = '+Buffers' },
		{ mode = 'n', keys = '<Leader>f', desc = '+Find' },
		{ mode = 'n', keys = '<Leader>w', desc = '+Fenêtres' },
	},
	-- Options fenêtre (optionnel)
	window = {
		delay = 200, -- Affichage après 500ms
		config = {
      			width = 'auto',
			}
		},
		})
