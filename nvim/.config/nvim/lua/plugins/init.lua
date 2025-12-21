vim.pack.add({
	{ src = "https://github.com/vague2k/vague.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/echasnovski/mini.pick" },
	{ src = "https://github.com/folke/zen-mode.nvim" },
	{ src = "https://github.com/akinsho/toggleterm.nvim" },
	{ src = "https://github.com/m4xshen/hardtime.nvim" },
	{ src = "https://github.com/preservim/nerdtree" },
	{ src = "https://github.com/akinsho/git-conflict.nvim" },
	{ src = "https://github.com/Xuyuanp/nerdtree-git-plugin" },
	{ src = "https://github.com/barrett-ruth/live-server.nvim" },
	{ src = "https://github.com/m4xshen/autoclose.nvim" },
	{ src = "https://github.com/tris203/precognition.nvim" },
	{ src = "https://github.com/ThePrimeagen/vim-be-good" },
	{ src = "https://github.com/nvzone/typr" },
	{ src = "https://github.com/nvzone/volt" },
	{ src = "https://github.com/sphamba/smear-cursor.nvim" },
	{ src = "https://github.com/akinsho/bufferline.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/ellisonleao/glow.nvim" },
	{ src = 'https://github.com/leath-dub/snipe.nvim' },
	{ src = "https://github.com/echasnovski/mini.clue" },
	{ src = "https://github.com/chomosuke/typst-preview.nvim" },
})

-- Charger config plugins une fois installés
require("plugins.plugin_configs.mini_pick")
require("plugins.plugin_configs.oil")
require("plugins.plugin_configs.zen")
require("plugins.plugin_configs.terminal")
require("plugins.plugin_configs.hardtime")
require("plugins.plugin_configs.nerdtree")
require("plugins.plugin_configs.git_conflict")
require("plugins.plugin_configs.nerdtree-git-plugin")
require("plugins.plugin_configs.live-server")
require("plugins.plugin_configs.autoclose")
require("plugins.plugin_configs.precognition")
require("plugins.plugin_configs.typr")
require("plugins.plugin_configs.smear_cursor")
require("plugins.plugin_configs.bufferline")
require("plugins.plugin_configs.glow")
require("plugins.plugin_configs.snipe")
require("plugins.plugin_configs.clue")
require("plugins.plugin_configs.typst-preview")
