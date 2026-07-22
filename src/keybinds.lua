local p = require("src.programs")
-- local p.mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Application Keybinds
hl.bind(p.mainMod .. " + B", hl.dsp.exec_cmd("zen-browser"))

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(p.mainMod .. " + Q", hl.dsp.exec_cmd(p.terminal))
local closeWindowBind = hl.bind(p.mainMod .. " + D", hl.dsp.window.close())

-- closeWindowBind:set_enabled(false)
-- hl.bind(
-- 	p.mainMod .. " + M",
-- 	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
-- )
hl.bind(p.mainMod .. " + E", hl.dsp.exec_cmd(p.fileManager))
hl.bind(p.mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(p.mainMod .. " + R", hl.dsp.exec_cmd(p.menu))
hl.bind(p.mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(p.mainMod .. " + SHIFT + T", hl.dsp.layout("togglesplit")) -- dwindle only

-- Move focus with p.mainMod + arrow keys
hl.bind(p.mainMod .. " + h", hl.dsp.focus({ direction = "left" }))
hl.bind(p.mainMod .. " + l", hl.dsp.focus({ direction = "right" }))
hl.bind(p.mainMod .. " + k", hl.dsp.focus({ direction = "up" }))
hl.bind(p.mainMod .. " + j", hl.dsp.focus({ direction = "down" }))

-- Move focus with p.mainMod + arrow keys
hl.bind(p.mainMod .. " + SHIFT + h", hl.dsp.window.move({ direction = "left" }))
hl.bind(p.mainMod .. " + SHIFT + l", hl.dsp.window.move({ direction = "right" }))
hl.bind(p.mainMod .. " + SHIFT + k", hl.dsp.window.move({ direction = "up" }))
hl.bind(p.mainMod .. " + SHIFT + j", hl.dsp.window.move({ direction = "down" }))

-- Fullscreen focusesd window
hl.bind(p.mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen({ action = "toggle" }))

-- Switch workspaces with p.mainMod + [0-9]
-- Move active window to a workspace with p.mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(p.mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(p.mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(p.mainMod .. " + X", hl.dsp.workspace.toggle_special("magic"))
hl.bind(p.mainMod .. " + SHIFT + X", hl.dsp.window.move({ workspace = "special:magic" }))



-- Scroll through existing workspaces with p.mainMod + scroll
hl.bind(p.mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(p.mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with p.mainMod + LMB/RMB and dragging
hl.bind(p.mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(p.mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind(p.mainMod .. "+ n", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind(p.mainMod .. "+ p", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

hl.bind(p.mainMod .. " + SPACE", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })

-- Screenshot
hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m output")) -- screenshot monitor
hl.bind(p.mainMod .. " + PRINT", hl.dsp.exec_cmd("hyprshot -m window")) -- screenshot window
hl.bind(p.mainMod .. " + SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m region")) -- screenshot window
