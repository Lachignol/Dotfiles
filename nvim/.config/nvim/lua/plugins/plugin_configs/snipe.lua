-- Charger et configurer snipe.nvim
require('snipe').setup({
ui = {
    position = 'center',
    text_align = 'file-first',
    open_win_override = {
      title = " ** [MORPHEUS]: Follow the white rabbit ** ",
      border = "rounded",
    },
  },
})


vim.keymap.set('n', 'gb', function()
	require('snipe').open_buffer_menu()
end, { noremap = true, silent = true, desc = 'Ouvrir menu buffers snipe' })
