vim.pack.add({
	-- Thèmes
	{ src = "https://github.com/vague2k/vague.nvim" },
	-- { src = "https://github.com/scottmckendry/cyberdream.nvim" },
	-- { src = "https://github.com/iruzo/matrix-nvim" },
	-- Plugins
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/folke/zen-mode.nvim" },
	{ src = "https://github.com/akinsho/toggleterm.nvim" },
	{ src = "https://github.com/m4xshen/hardtime.nvim" },
	{ src = "https://github.com/akinsho/git-conflict.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-tree.lua" },
	{ src = "https://github.com/barrett-ruth/live-server.nvim" },
	{ src = "https://github.com/windwp/nvim-autopairs" },
	{ src = "https://github.com/tris203/precognition.nvim" },
	{ src = "https://github.com/ThePrimeagen/vim-be-good" },
	{ src = "https://github.com/sphamba/smear-cursor.nvim" },
	{ src = "https://github.com/akinsho/bufferline.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = 'https://github.com/leath-dub/snipe.nvim' },
	{ src = "https://github.com/Lachignol/time-bomb.nvim" },
	{ src = "https://github.com/echasnovski/mini.clue" },
	{ src = "https://github.com/echasnovski/mini.pick" },
	{ src = "https://github.com/nvim-mini/mini.cmdline" },
	{ src = "https://github.com/nvim-mini/mini.starter" },
	{ src = "https://github.com/nvim-mini/mini.extra" },
	{ src = "https://github.com/dimtion/guttermarks.nvim" },
	{ src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },

	-- Decommenter pour test lua
	-- { src = "https://github.com/nvim-mini/mini.test" },

	-- Decommenter pour typst
	-- { src = "https://github.com/chomosuke/typst-preview.nvim" },

	-- Decommenter pour dactilo
	-- { src = "https://github.com/nvzone/typr" },
	-- { src = "https://github.com/nvzone/volt" },

	-- IA
	-- { src = "https://github.com/github/copilot.vim.git" },







})


-- Active plugin natif et leur config
require("plugins.plugin_configs.undotree")

-- Charger config plugins une fois installés
require("plugins.plugin_configs.oil")
require("plugins.plugin_configs.zen")
require("plugins.plugin_configs.terminal")
require("plugins.plugin_configs.hardtime")
require("plugins.plugin_configs.git_conflict")
require("plugins.plugin_configs.live-server")
require("plugins.plugin_configs.autopairs")
require("plugins.plugin_configs.precognition")
require("plugins.plugin_configs.smear_cursor")
require("plugins.plugin_configs.bufferline")
require("plugins.plugin_configs.snipe")
require("plugins.plugin_configs.clue")
require("plugins.plugin_configs.mini_cmdline")
require("plugins.plugin_configs.mini_starter")
require("plugins.plugin_configs.guttermarks")
require("plugins.plugin_configs.nvim-tree")
require("plugins.plugin_configs.mini_pick")
require("plugins.plugin_configs.mini_extra")
require("plugins.plugin_configs.render-markdown")
require("plugins.plugin_configs.time-bomb")




-- Decommenter pour test lua
-- require("plugins.plugin_configs.mini_test")

-- Decommenter pour dactilo (style monkeytype)
-- require("plugins.plugin_configs.typr")

-- Decommenter pour typst (language comme markdown et latex)
-- require("plugins.plugin_configs.typst-preview")


-- require("plugins.plugin_configs.boilerplate")
