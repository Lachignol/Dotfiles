require('typst-preview').setup({
  	debug = true,
	port = 10112,
	-- si je veu ouvrir automatiquement la fenetre avec firefox
	-- open_cmd = 'firefox %s -P typst-preview --class typst-preview',
})


vim.keymap.set('n', '<leader>tp', function()
  vim.cmd('TypstPreviewToggle')
  vim.cmd('echom "Typst Preview: http://localhost:10112"')
end, { desc = 'Run/Stop Typst Preview' })
