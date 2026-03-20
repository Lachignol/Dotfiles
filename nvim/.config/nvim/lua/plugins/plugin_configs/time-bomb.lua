-- vim.opt.runtimepath:append(" ~/coding_lab/time-bomb.nvim/")
require("time-bomb").setup({
	-- enable_default_keymaps = true,
	-- position = {
	-- 	layout = "bottom-left",
	-- 	margin = { x = 0, y = 1 },
	--
	--
	-- },
	pomodoro_cycles = {
		{ title = "Work",        time = "25", style = "mama-lova" },
		{ title = "Short-Break", time = "5",  style = "normal" },
		{ title = "Work",        time = "25", style = "fire" },
		{ title = "Short-Break", time = "5",  style = "normal" },
		{ title = "Work",        time = "25", style = "fire" },
		{ title = "Long-Break",  time = "15", style = "normal" },
	},
	-- timer_color = "lime",
	-- enable_notification = true,
})
