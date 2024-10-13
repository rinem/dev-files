-- Pull in the wezterm API
local wezterm = require("wezterm")
local mux = wezterm.mux
local act = wezterm.action

-- This will hold the configuration.
local config = {}
-- if wezterm.config_builder then
--   config = wezterm.config_builder()
-- end

config.wsl_domains = {
	{
		name = 'WSL:Ubuntu-22.04',
		distribution = 'WSL:Ubuntu-22.04',
	}
}

-- This is where you actually apply your config choices

config.font_size = 12


config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9
config.macos_window_background_blur = 20

-- my coolnight colorscheme:
config.colors = {
	foreground = "#CBE0F0",
	background = "#011423",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

config.default_domain = 'WSL:Ubuntu-22.04'

-- and finally, return the configuration to wezterm
return config