local hsluv = require("libs.hsluv")

---@param foreground string foreground color
---@param opacity number number between 0 and 1
---@param background string background color
local function blend(foreground, opacity, background)
    local bg = hsluv.hex_to_rgb(background)
    local fg = hsluv.hex_to_rgb(foreground)

    local function blend_channel(i)
        return (opacity * fg[i] + ((1 - opacity) * bg[i]))
    end

    return hsluv.rgb_to_hex({ blend_channel(1), blend_channel(2), blend_channel(3) })
end

---@param color string color to lighten as a hex string
---@param amount number number between 0 and 1
local function lighten(color, amount)
    local hsluv_color = hsluv.hex_to_hsluv(color)

    local luminance = hsluv_color[3]

    return hsluv.hsluv_to_hex({ hsluv_color[1], hsluv_color[2], luminance + (amount * 100) })
end

local function darken(color, amount)
    local hsluv_color = hsluv.hex_to_hsluv(color)

    local luminance = hsluv_color[3]

    return hsluv.hsluv_to_hex({ hsluv_color[1], hsluv_color[2], luminance - (amount * 100) })
end

local palette = {
    black = "#121414",
    black_lighten_1 = "#16191a",
    black_lighten_2 = "#1c2021",
    black_lighten_3 = "#232729",
    black_lighten_4 = "#292e30",
    black_lighten_5 = "#303638",
    black_lighten_6 = "#363d40",
    blue_black = "#0e1214",
    blue_black_lighten_1 = "#11181a",
    blue_black_lighten_2 = "#151d20",
    blue_black_lighten_3 = "#1a2428",
    blue_black_lighten_4 = "#1f2b30",
    blue_black_lighten_5 = "#243238",
    blue_black_lighten_6 = "#293940",
    white = "#fcfcfc",
    white_darken_1 = "#f7f7f7",
    white_darken_2 = "#f0f0f0",
    white_darken_3 = "#e6e6e6",
    white_darken_4 = "#d9d9d9",
    blue_white = "#f5fbfc",
    blue_white_darken_1 = "#f0f6f7",
    blue_white_darken_2 = "#e8eeef",
    blue_white_darken_3 = "#dfe4e6",
    blue_white_darken_4 = "#d2d8d9",
    red = "#e68a8a",
    orange = "#de9865",
    yellow = "#e1ca75",
    green = "#9bc26c",
    turquoise = "#79d9c7",
    blue = "#76bbd7",
    indigo = "#768dd7",
    purple = "#bb99e0",
    pink = "#e787ac",
    saturated_red = "#f27979",
    saturated_orange = "#f29655",
    saturated_yellow = "#f2d466",
    saturated_green = "#a4d964",
    saturated_turquoise = "#6ff2da",
    saturated_blue = "#6ccaf0",
    saturated_indigo = "#6785e6",
    saturated_purple = "#be8df2",
    saturated_pink = "#ff7aad",
}

local function night_colors()
    return {
        editor = {
        },
        syntax = {
        },
        terminal = {
            black = palette.black,
            bright_black = palette.bright_black,
            red = palette.red,
            bright_red = palette.bright_red,
            green = palette.green,
            bright_green = palette.bright_green,
            yellow = palette.yellow,
            bright_yellow = palette.bright_yellow,
            blue = palette.blue,
            bright_blue = palette.bright_blue,
            purple = palette.purple,
            bright_purple = palette.bright_purple,
            cyan = palette.cyan,
            bright_cyan = palette.bright_cyan,
            white = palette.white,
            bright_white = palette.bright_white,
        },
    }
end

local function set_highlight(group, highlight)
    vim.api.nvim_set_hl(0, group, highlight)
end

local function set_editor_colors(editor_colors)
    for group, highlight in pairs(editor_colors) do
        set_highlight(group, highlight)
    end
end

local function set_syntax_colors(syntax_colors)
    for group, highlight in pairs(syntax_colors) do
        set_highlight(group, highlight)
    end
end

local function set_terminal_colors(terminal_colors)
    vim.g.terminal_color_0 = terminal_colors.black
    vim.g.terminal_color_1 = terminal_colors.red
    vim.g.terminal_color_2 = terminal_colors.green
    vim.g.terminal_color_3 = terminal_colors.yellow
    vim.g.terminal_color_4 = terminal_colors.blue
    vim.g.terminal_color_5 = terminal_colors.magenta
    vim.g.terminal_color_6 = terminal_colors.cyan
    vim.g.terminal_color_7 = terminal_colors.white
    vim.g.terminal_color_8 = terminal_colors.black_bright
    vim.g.terminal_color_9 = terminal_colors.red_bright
    vim.g.terminal_color_10 = terminal_colors.green_bright
    vim.g.terminal_color_11 = terminal_colors.yellow_bright
    vim.g.terminal_color_12 = terminal_colors.blue_bright
    vim.g.terminal_color_13 = terminal_colors.magenta_bright
    vim.g.terminal_color_14 = terminal_colors.cyan_bright
    vim.g.terminal_color_15 = terminal_colors.white_bright
end

local function set_colors(colors)
    set_editor_colors(colors.editor)
    set_syntax_colors(colors.syntax)
    set_terminal_colors(colors.terminal)
end

local M = {}

function M.load()
    set_colors(night_colors())
end

return M
