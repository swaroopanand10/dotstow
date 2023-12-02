local wezterm = require("wezterm")

return {
  force_reverse_video_cursor = true, --make the bg color of cursor as same as character under the cursor
  enable_tab_bar = false,
  cursor_thickness=2,
	color_scheme = "Dracula",
	colors = {
		background = "black",
		cursor_bg = "#ffffff",
		cursor_fg = "black",
    cursor_border = '#ffffff',
	},
	font = wezterm.font("JetBrainsMono Nerd Font", {}),
}
