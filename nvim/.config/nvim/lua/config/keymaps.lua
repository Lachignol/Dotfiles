-----------------LEADER KEY----------------------------------------------------
vim.g.mapleader = " "

-------Desactiver la surbrillance de la recherche -------------------------------------------------------------------
vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR>", { silent = true, desc = "Désactiver surbrillance recherche" })
-- vim.keymap.set("n", "<leader>/", ":nohlsearch<CR>", {
-- 	noremap = true, silent = true, desc = "Désactiver surbrillance recherche"
-- })

-------TABS--------------------------------------------------------------
vim.keymap.set("n", "<leader>tk", "<C-w>t<C-w>K", {
	noremap = true, silent = true, desc = "Tab → Horizontal"
})
vim.keymap.set("n", "<leader>th", "<C-w>t<C-w>H", {
	noremap = true, silent = true, desc = "Horizontal → Tab"
})

-------BUFFER-------------------------------------------------------------------
vim.keymap.set("n", "<leader>bd", ":bd<CR>", {
	noremap = true, silent = true, desc = "Supprimer buffer"
})
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", {
	noremap = true, silent = true, desc = "Buffer précédent"
})
vim.keymap.set("n", "<S-l>", ":bnext<CR>", {
	noremap = true, silent = true, desc = "Buffer suivant"
})
vim.keymap.set("n", "<leader>lb", ":b#<CR>", {
	noremap = true, silent = true, desc = "Dernier buffer"
})

-------WINDOW-------------------------------------------------------------------
vim.keymap.set("n", "<C-h>", "<C-w>h", {
	noremap = true, silent = true, desc = "Fenêtre gauche"
})
vim.keymap.set("n", "<C-j>", "<C-w>j", {
	noremap = true, silent = true, desc = "Fenêtre bas"
})
vim.keymap.set("n", "<C-k>", "<C-w>k", {
	noremap = true, silent = true, desc = "Fenêtre haut"
})
vim.keymap.set("n", "<C-l>", "<C-w>l", {
	noremap = true, silent = true, desc = "Fenêtre droite"
})
vim.keymap.set("n", "<leader>wv", ":vsplit<CR><C-w>l", {
	noremap = true, silent = true, desc = "Split vertical"
})
vim.keymap.set("n", "<leader>wh", ":split<CR><C-w>j", {
	noremap = true, silent = true, desc = "Split horizontal"
})
vim.keymap.set("n", "<leader>wd", ":q<CR>", {
	noremap = true, silent = true, desc = "Fermer fenêtre"
})

-------RESIZE FENÊTRES (flèches + Ctrl)----------------------------------------
vim.keymap.set("n", "<C-Up>", "<C-w>+", {
	noremap = true, silent = true, desc = "Agrandir fenêtre haut"
})
vim.keymap.set("n", "<C-Down>", "<C-w>-", {
	noremap = true, silent = true, desc = "Réduire fenêtre haut"
})
vim.keymap.set("n", "<C-Right>", "<C-w>>", {
	noremap = true, silent = true, desc = "Agrandir fenêtre largeur"
})
vim.keymap.set("n", "<C-Left>", "<C-w><", {
	noremap = true, silent = true, desc = "Réduire fenêtre largeur"
})

-------ÉCHANGER FENÊTRES (flèches + Alt)----------------------------------------
vim.keymap.set("n", "<A-Up>", "<C-w>k<C-w>J", {
	noremap = true, silent = true, desc = "Échanger fenêtre ↑"
})
vim.keymap.set("n", "<A-Down>", "<C-w>j<C-w>K", {
	noremap = true, silent = true, desc = "Échanger fenêtre ↓"
})
vim.keymap.set("n", "<A-Left>", "<C-w>h<C-w>L", {
	noremap = true, silent = true, desc = "Échanger fenêtre ←"
})
vim.keymap.set("n", "<A-Right>", "<C-w>l<C-w>H", {
	noremap = true, silent = true, desc = "Échanger fenêtre →"
})

-------FENÊTRES ÉGALES----------------------------------------------------------
vim.keymap.set("n", "<leader>w=", ":wincmd =<CR>", {
	noremap = true, silent = true, desc = "Taille égale fenêtres"
})

-------MAXIMISER FENÊTRE--------------------------------------------------------
vim.keymap.set("n", "<leader>w_", "<C-w>_<CR>", {
	noremap = true, silent = true, desc = "Maximiser hauteur"
})
vim.keymap.set("n", "<leader>w|", "<C-w>|<CR>", {
	noremap = true, silent = true, desc = "Maximiser largeur"
})

-------NAVIGATION-------------------------------------------------------------------
vim.keymap.set("n", "<C-d>", "<C-d>zz", {
	noremap = true, silent = true, desc = "Demi-page bas + centre"
})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {
	noremap = true, silent = true, desc = "Demi-page haut + centre"
})

-------FLECHES-------------------------------------------------------------------
-- Désactiver les touches fléchées dans Neovim
vim.api.nvim_set_keymap("n", "<Up>", "", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Down>", "", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Left>", "", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Right>", "", { noremap = true, silent = true })

vim.api.nvim_set_keymap("i", "<Up>", "", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<Down>", "", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<Left>", "", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<Right>", "", { noremap = true, silent = true })

-------Mapper Ctrl-S pour enregistrer le buffer---------------------------------------
vim.keymap.set("n", "<C-s>", ":w<CR>", {
	noremap = true, silent = true, desc = "Sauvegarder"
})
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>a", {
	noremap = true, silent = true, desc = "Sauvegarder (insert)"
})

------Deplacement de texte ou ligne vers le haut avec k ou le bas avec h--------------
vim.keymap.set(
	"v",
	"<A-k>",
	":m '<-2<CR>gv-gv",
	{ noremap = true, silent = true, desc = "Déplace texte haut (visuel)" }
)
vim.keymap.set(
	"v",
	"<A-j>",
	":m '>+1<CR>gv-gv",
	{ noremap = true, silent = true, desc = "Déplace texte bas (visuel)" }
)
vim.keymap.set(
	"x",
	"<A-k>",
	":move '<-2<CR>gv-gv",
	{ noremap = true, silent = true, desc = "Déplace texte haut (visuel bloc)" }
)
vim.keymap.set(
	"x",
	"<A-j>",
	":move '>+1<CR>gv-gv",
	{ noremap = true, silent = true, desc = "Déplace texte bas (visuel bloc)" }
)

-- Permet de faire esc dans le terminal
vim.keymap.set('t', '', "")
vim.keymap.set('t', '', "")

-- Ferme la quicklist
vim.keymap.set('n', '<leader>cq', ':cclose | lclose<CR>', {
	silent = true, desc = "Fermer quickfix"
})
