local wezterm = require("wezterm")

return {
	check_for_updates = false,
	color_scheme = "terafox",
	enable_tab_bar = false,
	font = wezterm.font_with_fallback({
		"Comic Code",
		"nonicons",
	}),
	font_size = 16,
	line_height = 1.375,
	window_decorations = "RESIZE | MACOS_FORCE_DISABLE_SHADOW",
	window_padding = {
		left = 4,
		right = 4,
		top = 0,
		bottom = 0,
	},
}
