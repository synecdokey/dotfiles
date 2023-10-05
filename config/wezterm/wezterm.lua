local wezterm = require("wezterm")

return {
	font = wezterm.font_with_fallback({
		"Comic Code",
		"nonicons",
	}),
	font_size = 15,
	line_height = 1.2,
	color_scheme = "terafox",
	enable_tab_bar = false,
	check_for_updates = false,
	window_padding = {
		left = 4,
		right = 4,
		top = 0,
		bottom = 0,
	},
}
