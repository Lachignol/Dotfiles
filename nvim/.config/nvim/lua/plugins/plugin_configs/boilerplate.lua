vim.opt.runtimepath:append(" ~/coding-lab/boilerplate.nvim/")
require("boilerplate").setup({
	-- Message de salutation par défaut
	default_greeting = "Hello",
	-- Utiliser le nom d'utilisateur système
	use_username = true,
	-- Préfixe pour les messages
	prefix = "👋 ",
	-- Style de notification
	notify_level = "info", -- "info", "warn", "error"
	-- Flag pour activer les keymaps par default ou non si non set par default il est a true
	enable_default_keymaps = false,
	-- enable_keymaps = false,
	-- -- Custom Keymaps surcharge seulement si default_keymaps est a true
	-- keymaps =
	-- {
	-- 	hello = "<leader>tss",
	-- 	custom_hello = "<leader>tcs",
	-- }
	-- artist = "test",
	-- artist = "Pit baccardi"
})
