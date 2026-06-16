local mod = "CTRL + ALT + SUPER"

hl.bind(mod .. " + SPACE", hl.dsp.exec_cmd("noctalia msg panel-open launcher"))

hl.bind(mod .. " + E", hl.dsp.layout("move +col"))
hl.bind(mod .. " + Q", hl.dsp.layout("move -col"))
hl.bind(mod .. " + Z", hl.dsp.layout("tiling"))
hl.bind(mod .. " + F", hl.dsp.layout("colresize 1.0"))
hl.bind(mod .. " + D", hl.dsp.layout("colresize 0.5"))

hl.bind(mod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mod .. " + down", hl.dsp.focus({ direction = "down" }))
hl.bind(mod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mod .. " + right", hl.dsp.focus({ direction = "right" }))

hl.bind(mod .. " + J", hl.dsp.window.move({ direction = "left" }))
hl.bind(mod .. " + K", hl.dsp.window.move({ direction = "down" }))
hl.bind(mod .. " + I", hl.dsp.window.move({ direction = "up" }))
hl.bind(mod .. " + L", hl.dsp.window.move({ direction = "right" }))

hl.bind(mod .. " + X", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mod .. " + G", hl.dsp.window.fullscreen())
hl.bind("ALT + F4", hl.dsp.window.close())

for i = 1, 7 do
    hl.bind(mod .. " + " .. i, hl.dsp.focus({ workspace = i }))
    hl.bind(mod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
