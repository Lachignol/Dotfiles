require("mini.pick").setup({
    mappings = {
        move_down = "<C-n>",
        move_up = "<C-p>",
        toggle_preview = "<Tab>",
        choose = "<CR>",
        choose_marked = "<C-q>",
        mark = "<C-x>",
        stop = "<Esc>",
    },
    window = {
        config = function()
            local height = math.floor(vim.o.lines * 0.35)
            local width = vim.o.columns

            return {
                relative = "editor",
                anchor = "SW",
                row = vim.o.lines - 1,
                col = 0,
                width = width,
                height = height,
                border = "rounded",
            }
        end,
        -- Pour modifier le message du prompt
        prompt_prefix = 'Search:',
    },
    options = {
        use_cache = true,
    },

})
-- Keymaps pour ouvrir les pickers mini.pick intégrés
vim.keymap.set('n', '<leader><leader>', ":Pick files<CR>", { desc = "Search files" })
vim.keymap.set('n', '<leader>g<leader>', ":Pick grep_live<CR>", { desc = "Search grep" })
vim.keymap.set('n', '<leader>h<leader>', ":Pick help<CR>", { desc = "Search in help" })
vim.keymap.set("n", "<leader>.", function()
    local ok = pcall(function()
        vim.cmd("Pick resume")
    end)
    if not ok then
        vim.notify("No last search", vim.log.levels.WARN)
    end
end, { desc = "Open last search" })
