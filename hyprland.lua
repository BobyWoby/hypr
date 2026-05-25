-- Set programs that you use
local p = require("src.programs")

require("src/monitor")
require("src/autostart")
require("src/looks")
require("src/animations")
require("src/input")
require("src.keybinds")
require("src/rules")

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "rose-pine-hyprcursor")
hl.env("HYPRSHOT_DIR", "~/Pictures/Screenshots")

hl.config({
	dwindle = {
		preserve_split = true, -- You probably want this
	},
})

hl.config({
	misc = {
		force_default_wallpaper = 0, -- Set to 0 or 1 to disable the anime mascot wallpapers
		disable_hyprland_logo = false, -- If true disables the random hyprland logo / anime girl background. :(
	},
})
