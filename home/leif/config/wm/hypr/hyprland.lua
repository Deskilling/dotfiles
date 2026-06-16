require("animations")
require("binds")
require("input")
require("permissions")
require("start")
require("windowrules")

require("matugen")

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
        gaps_in          = 5,
        gaps_out         = 10,

        border_size      = 2,

        resize_on_border = false,

        -- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/
        allow_tearing    = true,

        layout           = "scrolling",
    },

    decoration = {
        rounding         = 10,
        rounding_power   = 2,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        blur             = {
            enabled  = true,
            size     = 6,
            passes   = 2,
            vibrancy = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },

    scrolling = {
        column_width = 0.5,
    },
})

-- https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/
hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})
