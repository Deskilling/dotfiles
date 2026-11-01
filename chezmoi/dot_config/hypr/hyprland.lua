require("animations")
require("binds")
require("input")
require("permissions")
require("start")
require("windowrules")

require("colors")

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
        gaps_in          = 5,
        gaps_out         = 10,

        border_size      = 2,

        resize_on_border = false,

        -- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/
        allow_tearing    = true,

        layout           = "dwindle",
    },

    decoration = {
        rounding         = 10,
        rounding_power   = 2,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        blur = {
            enabled  = true,
            size     = 3,
            passes = 2,
        },

        wobble = {
            enabled          = true,
            mesh             = 12,    -- default is fine, higher is smoother but costs GPU
            stiffness        = 250,   -- a bit snappier than the default 200
            damping          = 20,    -- default 12 bounces a lot, this settles after a swing or two
            mass             = 1,
            intensity        = 0.15,  -- slightly gentler than the default 0.2
            value_epsilon    = 0.25,
            velocity_epsilon = 2,
        },
    },

    animations = {
        enabled = true,
    },
})
