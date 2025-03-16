local color_palette = require("sakura.colors")
local c = require("sakura.color-utils")

local base = { 230, 25, 100, }
local text = { 230, 15, 40, }

local white = "#ffffff"

local pink = c.darken(color_palette.pink, 5)
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
    subtle = c.lighten(text, 20),
    muted = c.lighten(text, 40),
    white = white,
    pink = pink,
    pink_background = c.desaturate(c.lighten(pink, 27), 15),
    yellow = yellow,
    yellow_background = c.lighten(yellow, 40),
    green = green,
    green_background = c.lighten(green, 35),
    cyan = cyan,
    cyan_background = c.lighten(cyan, 25),
    purple = purple,
    purple_background = c.lighten(purple, 25),
    red = red,
    red_background = c.lighten(red, 25),
    highlight_low = c.darken(base, 3),
    highlight_medium = c.darken(base, 5),
    highlight_high = c.darken(base, 10),
    cursor_background = pink,
    cursor_text = white,
}
