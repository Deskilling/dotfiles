hl.curve(
    "overshot",
    {
        type = "bezier",
        points = { { 0.13, 0.99 }, { 0.29, 1.1 } },
    }
)

hl.curve(
    "easeOutCubic",
    {
        type = "bezier",
        points = { { 0.215, 0.61 }, { 0.355, 1.0 } },
    }
)


hl.animation({ enabled = true, leaf = "windows", speed = 3, bezier = "overshot", style = "slide" })
hl.animation({ enabled = true, leaf = "windowsOut", speed = 3, bezier = "overshot", style = "slide" })
hl.animation({ enabled = true, leaf = "windowsMove", speed = 3, bezier = "overshot" })
hl.animation({ enabled = true, leaf = "fade", speed = 3, bezier = "easeOutCubic" })
hl.animation({ enabled = true, leaf = "workspaces", speed = 3, bezier = "overshot", style = "slide" })
hl.animation({ enabled = true, leaf = "specialWorkspace", speed = 3, bezier = "overshot", style = "slide" })
