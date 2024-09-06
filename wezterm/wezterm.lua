local wezterm = require("wezterm")
local mux = wezterm.mux

wezterm.on("gui-startup", function()
	local _, _, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

local config = wezterm.config_builder()
config = {
	-- initial_cols = 150,
	-- initial_rows = 30,
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE", --disable the title bar but enable the resizeable border
	default_cursor_style = "BlinkingBar",
	-- color_scheme = "Tokyo Night",
	color_scheme = "Gruvbox dark, pale (base16)",
	font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
	font_size = 18,
	window_padding = {
		left = 0,
		right = 3,
		top = 0,
		bottom = 0,
	},

	-- window_background_opacity = 0.9,
}
return config
