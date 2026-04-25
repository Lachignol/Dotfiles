-- Désactiver netrw (obligatoire)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Activer les couleurs vraies
vim.opt.termguicolors = true

-- Configuration nvim-tree
require("nvim-tree").setup({
	view = {
		width = 35,
		adaptive_size = true,
	},
	renderer = {
		icons = {
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = true,
			},
		},
		highlight_git = true,
	},
	update_focused_file = {
		enable = true,
		update_root = true,
	},
	git = {
		enable = true,
		ignore = false,
	},
	filters = {
		dotfiles = false,
	},
})

-- Raccourcis clavier
vim.keymap.set("n", "<leader>to", ":NvimTreeToggle<CR>", { desc = "Toggle nvim-tree" })
