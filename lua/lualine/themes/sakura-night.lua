local c = require("sakura.color-utils")
local palette = require("sakura.palettes.sakura-night")

local theme = {
    normal = {
        a = { bg = palette.pink, fg = palette.overlay, gui = "bold", },
        b = { bg = palette.surface, fg = palette.pink, },
        c = { bg = palette.base, fg = palette.text, },
    },
    insert = {
        a = { bg = palette.yellow, fg = palette.overlay, gui = "bold", },
        b = { bg = palette.surface, fg = palette.yellow, },
        c = { bg = palette.base, fg = palette.text, },
    },
    visual = {
        a = { bg = palette.cyan, fg = palette.overlay, gui = "bold", },
        b = { bg = palette.surface, fg = palette.cyan, },
        c = { bg = palette.base, fg = palette.text, },
    },
    replace = {
        a = { bg = palette.red, fg = palette.overlay, gui = "bold", },
        b = { bg = palette.surface, fg = palette.red, },
        c = { bg = palette.base, fg = palette.text, },
    },
    command = {
        a = { bg = palette.green, fg = palette.overlay, gui = "bold", },
        b = { bg = palette.surface, fg = palette.green, },
        c = { bg = palette.base, fg = palette.text, },
    },
    inactive = {
        a = { bg = palette.overlay, fg = palette.subtle, gui = "bold", },
        b = { bg = palette.surface, fg = palette.subtle, },
        c = { bg = palette.base, fg = palette.subtle, },
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
