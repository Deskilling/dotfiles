local terminal    = "kitty"
local fileManager = "nautilus"

hl.monitor({
    output   = "DP-1",
    mode     = "2560x1440@143.85600",
    position = "auto",
    scale    = "auto",
})

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/
hl.on("hyprland.start", function()
    hl.exec_cmd("noctalia")
    hl.exec_cmd("vicinae server")
    hl.exec_cmd("awww-daemon");
end)

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/
hl.env("XCURSOR_SIZE", "24")
hl.env("XCURSOR_THEME", "breeze_cursors")

hl.env("HYPRCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "breeze_cursors")

hl.env("GDK_BACKEND", "wayland,x11,*")

hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_QPA_PLATFORMTHEME", "kvantum")
hl.env("QT_STYLE_OVERRIDE", "kvantum")

hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")
hl.env("OZONE_PLATFORM", "wayland")
