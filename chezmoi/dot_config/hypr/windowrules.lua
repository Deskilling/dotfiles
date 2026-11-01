hl.layer_rule({
    name = "noctalia",
    match = {
        namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$",
    },
    no_anim = true,
    ignore_alpha = 0.5,
    blur = true,
    blur_popups = true,
})

hl.on("window.title", function (w)
    if not w or w.floating or w.class ~= "firefox" or not w.title:find("Extension: (Bitwarden", 1, true) then
        return
    end

    local m, W, H = hl.get_active_monitor(), 400, 600

    hl.dispatch(hl.dsp.window.float({ action = "enable", window = w }))
    hl.dispatch(hl.dsp.window.resize({ x = W, y = H, relative = false, window = w }))
    hl.dispatch(hl.dsp.window.move({ x = (m.width - W) / 2, y = (m.height - H) / 2, relative = false, window = w }))
end)
