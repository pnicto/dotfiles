local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.window_background_opacity = 0.95
config.adjust_window_size_when_changing_font_size = false

-- Appearance
config.color_scheme_dirs = { "~/.config/wezterm/colors" }
config.color_scheme = "Tokyo Night"

config.font_size = 12.5
config.font = wezterm.font("Fira Code Nerd Font")

config.use_fancy_tab_bar = true
config.tab_bar_at_bottom = true
config.show_new_tab_button_in_tab_bar = false
config.show_tab_index_in_tab_bar = false
config.switch_to_last_active_tab_when_closing_tab = true

config.enable_scroll_bar = true
config.exit_behavior = "CloseOnCleanExit"

-- Misc
config.animation_fps = 1
config.max_fps = 144
config.exit_behavior = "Close"
config.front_end = "WebGpu"

config.quit_when_all_windows_are_closed = false
config.scrollback_lines = 5000

return config
