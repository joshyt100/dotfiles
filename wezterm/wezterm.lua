
-- Settings
--
local wezterm = require 'wezterm'
local act = wezterm.action
local config = {}
window_decorations = "RESIZE"

config.color_scheme = "Tokyo Night"
config.window_background_opacity = 0.9
config.window_decorations = "RESIZE"
config.window_close_confirmation = "AlwaysPrompt"
config.scrollback_lines = 3000
config.default_workspace = "main"
config.enable_tab_bar = false
-- Dim inactive panes
config.inactive_pane_hsb = {
  saturation = 0.24,
  brightness = 0.5
}
return config
