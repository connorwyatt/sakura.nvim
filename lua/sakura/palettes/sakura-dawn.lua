local color_palette = require("sakura.colors")
local c = require("sakura.color-utils")

local base = { 323, 25, 97, }
local text = { 323, 5, 40, }

local white = "#ffffff"

local pink = c.darken(color_palette.pink, 5)
local pink_background = c.desaturate(c.lighten(pink, 27), 5)
local yellow = c.saturate(c.darken(color_palette.yellow, 10), 20)
local green = c.darken(color_palette.green, 10)
local cyan = color_palette.cyan
local purple = c.darken(color_palette.purple, 5)
local red = color_palette.red

return {
    is_dark = false,
    base = base,
    surface = c.darken(base, 3),
    overlay = c.darken(base, 6),
    text = text,
    subtle = c.lighten(text, 15),
    muted = c.lighten(text, 35),
    white = white,
    pink = pink,
    pink_background = pink_background,
    yellow = yellow,
    yellow_background = c.lighten(yellow, 37),
    green = green,
    green_background = c.lighten(green, 35),
    cyan = cyan,
    cyan_background = c.lighten(cyan, 27),
    purple = purple,
    purple_background = c.lighten(purple, 25),
    red = red,
    red_background = c.lighten(red, 25),
    highlight_low = pink_background,
    highlight_medium = c.darken(pink_background, 3),
    highlight_high = c.darken(pink_background, 6),
    cursor_background = pink,
    cursor_text = white,
}
