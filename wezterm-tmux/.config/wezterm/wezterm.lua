local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Pour que Neovim et Tmux affichent le "True Color" (24-bit) correctement,
config.term = "xterm-256color"

-- Chargement du thème personnalisé (à côté de ce fichier)
config.colors = require("cyberdream")

-- Chargement du cursor par default
config.default_cursor_style = 'BlinkingBlock'

-- Activation du presse-papiers et autres options utiles
config.enable_wayland = true
config.enable_scroll_bar = true
config.force_reverse_video_cursor = true

-- Raccourcis clavier personnalisés
config.keys = {
	-- Copier / Coller indispensable au niveau du terminal
	{
		key = 'c',
		mods = 'SHIFT|CTRL',
		action = wezterm.action.CopyTo 'Clipboard',
	},
	{
		key = 'v',
		mods = 'SHIFT|CTRL',
		action = wezterm.action.PasteFrom 'Clipboard',
	},

	-- Ces blocs forcent WezTerm à donner la priorité absolue à Tmux/Neovim pour la navigation
	{
		key = 'h',
		mods = 'CTRL',
		action = wezterm.action.SendKey { key = 'h', mods = 'CTRL' },
	},
	{
		key = 'j',
		mods = 'CTRL',
		action = wezterm.action.SendKey { key = 'j', mods = 'CTRL' },
	},
	{
		key = 'k',
		mods = 'CTRL',
		action = wezterm.action.SendKey { key = 'k', mods = 'CTRL' },
	},
	{
		key = 'l',
		mods = 'CTRL',
		action = wezterm.action.SendKey { key = 'l', mods = 'CTRL' },
	},
}

--  Réglages visuels
config.window_padding = {
	left = 5,
	right = 5,
	top = 5,
	bottom = 5,
}

config.warn_about_missing_glyphs = false
config.scrollback_lines = 10000

return config
