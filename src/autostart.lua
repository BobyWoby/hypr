-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
local p = require("src.programs")
hl.on("hyprland.start", function()
	hl.exec_cmd(p.terminal)
	-- hl.exec_cmd("nm-applet")
	hl.exec_cmd("noctalia")
	hl.exec_cmd("mpris-proxy")
    hl.exec_cmd("[workspace special:magic silent] spotify")
    hl.exec_cmd("[workspace special:magic silent] discord")
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("hyprsunset")
	-- hl.exec_cmd("waybar & hyprpaper & firefox")
end)
