local color_palette = require("sakura.colors")
local c = require("sakura.color-utils")

local base = { 323, 25, 97, }
local text = { 323, 5, 40, }

local white = "#ffffff"

local pink = c.desaturate(c.darken(color_palette.pink, 10), 15)
local pink_background = c.desaturate(c.lighten(pink, 30), 5)
local yellow = c.desaturate(c.darken(color_palette.yellow, 5), 5)
local green = c.desaturate(c.darken(color_palette.green, 10), 10)
local cyan = c.desaturate(c.darken(color_palette.cyan, 5), 10)
local purple = c.desaturate(c.darken(color_palette.purple, 10), 15)
local red = c.desaturate(c.darken(color_palette.red, 5), 15)

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
    yellow_background = c.desaturate(c.lighten(yellow, 35), 15),
    green = green,
    green_background = c.desaturate(c.lighten(green, 35), 10),
    cyan = cyan,
    cyan_background = c.desaturate(c.lighten(cyan, 25), 15),
    purple = purple,
    purple_background = c.desaturate(c.lighten(purple, 30), 5),
    red = red,
    red_background = c.desaturate(c.lighten(red, 30), 15),
    highlight_low = pink_background,
    highlight_medium = c.darken(pink_background, 3),
    highlight_high = c.darken(pink_background, 6),
    cursor_background = pink,
    cursor_text = white,
}
