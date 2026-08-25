require("guttermarks").setup({
	global_mark = { enabled = true },
	special_mark = { enabled = false },
})
vim.keymap.set("n", "m;", require("guttermarks.actions").delete_mark, { desc = "Delete marks under cursor" })
vim.keymap.set("n", "]m", require("guttermarks.actions").next_buf_mark, { desc = "Next mark in current buffer" })
vim.keymap.set("n", "[m", require("guttermarks.actions").prev_buf_mark, { desc = "Previous mark in current buffer" })

vim.keymap.set("n", "<leader>mq", function()
	require("guttermarks.actions").marks_to_quickfix()
	vim.cmd("copen")
end, { desc = "Send marks to the quickfix list" })


vim.keymap.set("n", "<leader>md", function()
	vim.cmd("delmarks A-Z")
	vim.cmd("delmarks a-z")
	vim.cmd("delmarks 0-9")
	vim.notify("🧹 All marks have been deleted", vim.log.levels.INFO)
end, { desc = "Delete all marks" })
