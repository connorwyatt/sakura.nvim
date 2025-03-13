local color_palette = require("sakura.colors")
local c = require("sakura.color-utils")

local base = { 230, 30, 20, }
local text = { 230, 5, 83, }

local white = "#ffffff"

local pink_background = c.desaturate(c.darken(color_palette.pink, 35), 25)

return {
    is_dark = true,
    base = base,
    surface = c.lighten(base, 5),
    overlay = c.lighten(base, 10),
    text = text,
    subtle = c.saturate(c.darken(text, 25), 10),
    muted = c.saturate(c.darken(text, 45), 20),
    white = white,
    pink = color_palette.pink,
    pink_background = pink_background,
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
    highlight_high = c.lighten(base, 20),
    cursor_background = color_palette.pink,
    cursor_text = white,
}
