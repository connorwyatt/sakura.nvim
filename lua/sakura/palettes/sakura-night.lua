local color_palette = require("sakura.colors")
local c = require("sakura.color-utils")

local base = { 230, 30, 17, }
local text = { 323, 5, 83, }

return {
    base = base,
    surface = c.lighten(base, 5),
    overlay = c.lighten(base, 15),
    text = text,
    subtle = c.desaturate(c.blend(text, 0.6, base), 5),
    muted = c.desaturate(c.blend(text, 0.1, base), 5),
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
    highlight_low = c.lighten(base, 5),
    highlight_medium = c.lighten(base, 10),
    highlight_high = c.lighten(base, 25),
}
