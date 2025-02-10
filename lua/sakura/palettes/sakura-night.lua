local color_palette = require("sakura.colors")
local c = require("sakura.color-utils")

local night_base = { 230, 30, 17, }
local night_text = { 230, 30, 83, }

return {
    base = night_base,
    surface = c.lighten(night_base, 5),
    overlay = c.lighten(night_base, 15),
    text = night_text,
    subtle = c.desaturate(c.blend(night_text, 0.6, night_base), 5),
    muted = c.desaturate(c.blend(night_text, 0.1, night_base), 5),
    pink = color_palette.pink,
    pink_background = c.desaturate(c.darken(color_palette.pink, 35), 25),
    yellow = color_palette.yellow,
    yellow_background = c.desaturate(c.darken(color_palette.yellow, 35), 25),
    green = color_palette.green,
    green_background = c.desaturate(c.darken(color_palette.green, 35), 15),
    cyan = color_palette.cyan,
    cyan_background = c.desaturate(c.darken(color_palette.cyan, 35), 25),
    purple = color_palette.purple,
    purple_background = c.desaturate(c.darken(color_palette.purple, 35), 25),
    red = color_palette.red,
    red_background = c.desaturate(c.darken(color_palette.red, 40), 30),
    highlight_low = c.lighten(night_base, 5),
    highlight_medium = c.lighten(night_base, 10),
    highlight_high = c.lighten(night_base, 25),
}
