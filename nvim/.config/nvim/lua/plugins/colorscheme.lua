-- colors
-- require "vague".setup({})
require "vague".setup({ transparent = true })
vim.cmd("colorscheme vague")
-- Pour enlever la couleur de fond de la statusline on peu aussi changer la couleur
-- vim.cmd(":hi statusline guibg=NONE")


-- Palette green terminal
vim.cmd('hi StatusLine guibg=#0a3d0a guifg=#00d400 gui=bold')
vim.cmd('hi StatusLineNC guibg=#081808 guifg=#00a000')

