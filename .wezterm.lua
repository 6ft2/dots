local wezterm = require 'wezterm'

local config = wezterm.config_builder()


config.color_scheme = 'Tokyo Night'
config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.window_background_opacity = 0.9
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = '1cell',
	right = '1cell',
	top = 0,
	bottom = 0,
}

return config
