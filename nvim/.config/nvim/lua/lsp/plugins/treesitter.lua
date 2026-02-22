local ts = require('nvim-treesitter')

ts.setup({
  install_dir = vim.fn.stdpath('data') .. '/site',
})

-- Langages à installer
local languages = {
  'asm',
  'bash', 'c', 'cpp', 
  'css', 'dockerfile',
  'go', 'html', 
  'javascript', 'json', 'lua', 
  'make',     
  'markdown', 'python',
  'rust', 'sql', 
  'toml',  
  'typescript', 'typst', 
  'vim', 'vimdoc', 'yaml'
}


-- Installation en arriere plan asynchrone
ts.install(languages)
--DECOMENTER POUR Installation synchrone
-- ts.install(languages):wait(300000)

-- Activation automatique
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function()
    local ok = pcall(vim.treesitter.start)
    if ok then
      vim.wo[0][0].foldmethod = 'expr'
      vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
      vim.wo[0][0].foldenable = false
      vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
  end,
})
