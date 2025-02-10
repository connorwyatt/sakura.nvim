local c = require("sakura.color-utils")
local night_palette = require("sakura.palettes.sakura-night")

local theme = {
    normal = {
        a = { bg = night_palette.pink, fg = night_palette.overlay, gui = "bold", },
        b = { bg = night_palette.surface, fg = night_palette.pink, },
        c = { bg = night_palette.base, fg = night_palette.text, },
    },
    insert = {
        a = { bg = night_palette.yellow, fg = night_palette.overlay, gui = "bold", },
        b = { bg = night_palette.surface, fg = night_palette.yellow, },
        c = { bg = night_palette.base, fg = night_palette.text, },
    },
    visual = {
        a = { bg = night_palette.cyan, fg = night_palette.overlay, gui = "bold", },
        b = { bg = night_palette.surface, fg = night_palette.cyan, },
        c = { bg = night_palette.base, fg = night_palette.text, },
    },
    replace = {
        a = { bg = night_palette.red, fg = night_palette.overlay, gui = "bold", },
        b = { bg = night_palette.surface, fg = night_palette.red, },
        c = { bg = night_palette.base, fg = night_palette.text, },
    },
    command = {
        a = { bg = night_palette.green, fg = night_palette.overlay, gui = "bold", },
        b = { bg = night_palette.surface, fg = night_palette.green, },
        c = { bg = night_palette.base, fg = night_palette.text, },
    },
    inactive = {
        a = { bg = night_palette.overlay, fg = night_palette.subtle, gui = "bold", },
        b = { bg = night_palette.surface, fg = night_palette.subtle, },
        c = { bg = night_palette.base, fg = night_palette.subtle, },
    },
}

for _, sections in pairs(theme) do
    for _, highlights in pairs(sections) do
        for key, value in pairs(highlights) do
            if key == "bg" or key == "fg" or key == "sp" then
                highlights[key] = c.hsl_to_hex(value)
            end
        end
    end
end

return theme
