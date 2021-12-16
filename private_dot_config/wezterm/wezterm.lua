local wezterm = require 'wezterm';
return {
    check_for_updates = true,

    font = wezterm.font("FiraCode Nerd Font"),
    font_size = 14.0,

    initial_rows = 28,
    initial_cols = 80,

    hide_tab_bar_if_only_one_tab = true,

    window_padding = {
        left = 5,
        right = 5,
        top = 2,
        bottom = 2
    },

    audible_bell = "Disabled",
    visual_bell = {
        fade_in_function = "EaseIn",
        fade_in_duration_ms = 100,
        fade_out_function = "EaseOut",
        fade_out_duration_ms = 100,
        target = "CursorColor",
    },

    color_scheme = "nightowl",

    window_background_opacity = 0.9,
}

