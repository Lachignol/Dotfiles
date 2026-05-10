require('render-markdown').setup({})
-- Active le masquage avancé du texte “concealed” dans Neovim.
-- Avec `conceallevel = 2`, certains caractères de syntaxe
-- (comme le markdown, les balises, ou les marqueurs de mise en forme)
-- peuvent être cachés pour rendre le texte plus lisible.
vim.opt.conceallevel = 2
