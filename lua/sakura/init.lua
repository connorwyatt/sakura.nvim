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

    return hsluv.hsluv_to_hex({ hsluv_color[1], hsluv_color[2], luminance + amount, })
end

local colors = {
    pink = hsluv.hsluv_to_hex({ 340, 75, 70, }),
    yellow = hsluv.hsluv_to_hex({ 55, 75, 80, }),
    green = hsluv.hsluv_to_hex({ 100, 50, 85, }),
    cyan = hsluv.hsluv_to_hex({ 240, 60, 70, }),
    purple = hsluv.hsluv_to_hex({ 280, 75, 70, }),
    red = hsluv.hsluv_to_hex({ 0, 80, 70, }),
}

local base = hsluv.hsluv_to_hex({ 270, 25, 13 })
local text = hsluv.hsluv_to_hex({ 270, 60, 85 })

local palette = {
    base = base,
    surface = lighten(base, 5),
    overlay = lighten(base, 15),
    text = text,
    subtle = blend(text, 0.5, base),
    muted = blend(text, 0.25, base),
    pink = colors.pink,
    yellow = colors.yellow,
    green = colors.green,
    cyan = colors.cyan,
    purple = colors.purple,
    red = colors.red,
    highlight_low = blend(colors.pink, 0.1, base),
    highlight_medium = lighten(base, 10),
    highlight_high = lighten(base, 25),
}

local function night_colors()
    local selection_background_color = blend(palette.pink, 0.3, palette.base)
    local selection_text_color = palette.text

    local separator_color = palette.highlight_high
    local statusline_background_color = palette.surface

    local variable_text_color = palette.text
    local constant_text_color = palette.purple
    local property_text_color = palette.purple
    local keyword_text_color = palette.pink
    local number_text_color = palette.yellow
    local boolean_text_color = palette.yellow
    local string_text_color = palette.yellow
    local function_text_color = palette.cyan
    local metadata_text_color = palette.purple
    local type_text_color = palette.yellow
    local comment_text_color = palette.subtle
    local operator_text_color = palette.subtle
    local punctuation_text_color = palette.subtle

    return {
        editor = {
            CurSearch    = { link = "IncSearch" },
            Cursor       = { fg = palette.text, bg = palette.pink },
            CursorColumn = { link = "CursorLine" },
            CursorIM     = { link = "Cursor" },
            CursorLine   = { bg = palette.highlight_low },
            CursorLineNr = { fg = palette.pink, bold = true },
            DiffAdd      = { bg = blend(palette.green, 0.15, palette.base) },
            DiffChange   = { bg = blend(palette.cyan, 0.15, palette.base) },
            DiffDelete   = { bg = blend(palette.red, 0.15, palette.base) },
            DiffText     = { bg = blend(palette.cyan, 0.3, palette.base) },
            Directory    = { fg = palette.yellow },
            EndOfBuffer  = { fg = palette.muted },
            ErrorMsg     = { fg = palette.red, },
            FoldColumn   = { fg = palette.subtle },
            IncSearch    = { fg = palette.text, bg = selection_background_color },
            LineNr       = { fg = palette.subtle },
            MatchParen   = { fg = palette.pink, bold = true },
            NonText      = { fg = palette.muted },
            Normal       = { fg = palette.text, bg = palette.base, },
            NormalFloat  = { link = "Normal" },
            NormalNC     = { fg = palette.subtle, bg = palette.base, },
            Pmenu        = { fg = palette.subtle, bg = palette.surface, },
            PmenuSbar    = { link = "Pmenu" },
            PmenuSel     = { fg = palette.text, bg = palette.overlay, },
            PmenuThumb   = { bg = palette.overlay, },
            QuickFixLine = { link = "CursorLine" },
            Search       = { fg = palette.text, bg = palette.highlight_medium },
            SignColumn   = { fg = palette.subtle },
            SignColumnSB = { link = "SignColumn" },
            SpellBad     = { sp = palette.red, undercurl = true },
            SpellCap     = { sp = palette.yellow, undercurl = true },
            SpellLocal   = { sp = palette.purple, undercurl = true },
            SpellRare    = { sp = palette.purple, undercurl = true },
            StatusLine   = { fg = palette.text, bg = statusline_background_color },
            StatusLineNC = { fg = palette.text, bg = statusline_background_color },
            Title        = { fg = palette.text, bold = true },
            VertSplit    = { link = "WinSeparator", },
            Visual       = { bg = selection_background_color },
            VisualNOS    = { link = "Visual" },
            WarningMsg   = { fg = palette.yellow },
            Whitespace   = { fg = palette.muted },
            WinSeparator = { fg = separator_color, },
            lCursor      = { link = "Cursor" },
        },
        gitsigns = {
            GitSignsAdd = { fg = palette.green, },
            GitSignsAddInline = { bg = blend(palette.green, 0.3, palette.base), },
            GitSignsAddLn = { bg = blend(palette.green, 0.15, palette.base), },
            GitSignsAddLnInline = { bg = blend(palette.green, 0.3, palette.base), },
            GitSignsAddNr = { link = "GitSignsAdd", },
            GitSignsChange = { fg = palette.cyan, },
            GitSignsChangeInline = { bg = blend(palette.cyan, 0.3, palette.base), },
            GitSignsChangeLn = { bg = blend(palette.cyan, 0.15, palette.base), },
            GitSignsChangeLnInline = { bg = blend(palette.cyan, 0.3, palette.base), },
            GitSignsChangeNr = { link = "GitSignsChange", },
            GitSignsDelete = { fg = palette.red, },
            GitSignsDeleteInline = { bg = blend(palette.red, 0.3, palette.base), },
            GitSignsDeleteLn = { bg = blend(palette.red, 0.15, palette.base), },
            GitSignsDeleteLnInline = { bg = blend(palette.red, 0.3, palette.base), },
            GitSignsDeleteNr = { link = "GitSignsDelete", },
            GitSignsUntracked = { fg = palette.yellow, },
            GitSignsUntrackedInline = { bg = blend(palette.yellow, 0.3, palette.base), },
            GitSignsUntrackedLn = { bg = blend(palette.yellow, 0.15, palette.base), },
            GitSignsUntrackedLnInline = { bg = blend(palette.yellow, 0.3, palette.base), },
            GitSignsUntrackedNr = { link = "GitSignsUntracked", },
        },
        syntax = {
            Bold          = { bold = true },
            Boolean       = { link = "Number" },
            Character     = { link = "String" },
            Comment       = { fg = comment_text_color },
            Conditional   = { link = "Keyword" },
            Constant      = { fg = constant_text_color },
            Define        = { link = "PreProc" },
            Delimiter     = { fg = punctuation_text_color },
            Error         = { fg = palette.red, },
            Exception     = { link = "Keyword" },
            Float         = { link = "Number" },
            Function      = { fg = palette.cyan },
            Identifier    = { fg = palette.text },
            Include       = { link = "PreProc" },
            Italic        = { italic = true },
            Keyword       = { fg = palette.pink },
            Label         = { link = "Keyword" },
            Macro         = { link = "PreProc" },
            Number        = { fg = palette.purple },
            Operator      = { fg = palette.subtle },
            PreCondit     = { link = "PreProc" },
            PreProc       = { fg = palette.purple },
            Repeat        = { link = "Keyword" },
            Special       = { fg = palette.subtle },
            SpecialChar   = { fg = palette.subtle },
            Statement     = { link = "Keyword" },
            StorageClass  = { link = "Type" },
            String        = { link = "@string", },
            Structure     = { link = "Keyword" },
            Tag           = { fg = palette.pink },
            Todo          = { fg = palette.yellow, },
            Type          = { fg = palette.yellow },
            Typedef       = { link = "Type" },
            Underlined    = { underline = true },
            diffAdded     = { fg = palette.green },
            diffChanged   = { fg = palette.cyan },
            diffFile      = { fg = palette.purple },
            diffIndexLine = { fg = palette.green },
            diffLine      = { fg = palette.pink },
            diffNewFile   = { fg = palette.cyan },
            diffOldFile   = { fg = palette.yellow },
            diffRemoved   = { fg = palette.red },
        },
        treesitter = {
            ["@attribute"] = { fg = metadata_text_color, },
            ["@attribute.builtin"] = { link = "@attribute", },
            ["@boolean"] = { fg = boolean_text_color, },
            ["@character"] = { link = "@string", },
            ["@character.special"] = { link = "@character", },
            ["@comment"] = { fg = comment_text_color, },
            ["@comment.documentation"] = { link = "@comment", },
            ["@comment.error"] = { fg = palette.red, },
            ["@comment.info"] = { fg = palette.cyan, },
            ["@comment.note"] = { fg = palette.purple, },
            ["@comment.todo"] = { fg = palette.yellow, },
            ["@comment.warning"] = { fg = palette.yellow, },
            ["@constant"] = { fg = constant_text_color, },
            ["@constant.builtin"] = { link = "@constant" },
            ["@constant.macro"] = { link = "@constant" },
            ["@constructor"] = { link = "@function", },
            ["@function"] = { fg = function_text_color, },
            ["@function.builtin"] = { link = "@function", },
            ["@function.call"] = { link = "@function", },
            ["@function.macro"] = { link = "@function", },
            ["@function.method"] = { link = "@function", },
            ["@function.method.call"] = { link = "@function", },
            ["@keyword"] = { fg = keyword_text_color, },
            ["@keyword.conditional"] = { link = "@keyword", },
            ["@keyword.conditional.ternary"] = { link = "@keyword", },
            ["@keyword.coroutine"] = { link = "@keyword", },
            ["@keyword.debug"] = { link = "@keyword", },
            ["@keyword.directive"] = { link = "@keyword", },
            ["@keyword.directive.define"] = { link = "@keyword", },
            ["@keyword.exception"] = { link = "@keyword", },
            ["@keyword.function"] = { link = "@keyword", },
            ["@keyword.import"] = { link = "@keyword", },
            ["@keyword.modifier"] = { link = "@keyword", },
            ["@keyword.operator"] = { link = "@keyword", },
            ["@keyword.repeat"] = { link = "@keyword", },
            ["@keyword.return"] = { link = "@keyword", },
            ["@keyword.type"] = { link = "@keyword", },
            ["@label"] = { fg = operator_text_color, },
            ["@markup.italic"] = { italic = true, },
            ["@markup.strikethrough"] = { strikethrough = true, },
            ["@markup.strong"] = { bold = true, },
            ["@markup.underline"] = { underline = true, },
            ["@module"] = { link = "@variable", },
            ["@module.builtin"] = { link = "@variable", },
            ["@number"] = { fg = number_text_color, },
            ["@number.float"] = { link = "@number", },
            ["@operator"] = { fg = operator_text_color, },
            ["@property"] = { fg = property_text_color, },
            ["@punctuation"] = { fg = punctuation_text_color, },
            ["@punctuation.bracket"] = { fg = punctuation_text_color, },
            ["@punctuation.delimiter"] = { fg = punctuation_text_color, },
            ["@punctuation.special"] = { fg = punctuation_text_color, },
            ["@string"] = { fg = string_text_color, },
            ["@string.documentation"] = { link = "@string", },
            ["@string.escape"] = { link = "@string", },
            ["@string.regexp"] = { link = "@string", },
            ["@string.special"] = { link = "@string", },
            ["@string.special.path"] = { link = "@string", },
            ["@string.special.symbol"] = { link = "@string", },
            ["@string.special.url"] = { link = "@string", },
            ["@tag"] = { fg = keyword_text_color, },
            ["@tag.attribute"] = { fg = property_text_color },
            ["@tag.builtin"] = { link = "@tag", },
            ["@tag.delimiter"] = { fg = punctuation_text_color, },
            ["@type"] = { fg = type_text_color, },
            ["@type.builtin"] = { link = "@type", },
            ["@type.definition"] = { link = "@type", },
            ["@variable"] = { fg = variable_text_color, },
            ["@variable.builtin"] = { link = "@variable", },
            ["@variable.member"] = { link = "@variable", },
            ["@variable.parameter"] = { link = "@variable", },
            ["@variable.parameter.builtin"] = { link = "@variable", },
        },
        terminal = {
            black = palette.text,
            black_bright = lighten(palette.text, 15),
            red = palette.red,
            red_bright = lighten(palette.red, 15),
            green = palette.green,
            green_bright = lighten(palette.green, 15),
            yellow = palette.yellow,
            yellow_bright = lighten(palette.yellow, 15),
            blue = palette.purple,
            blue_bright = lighten(palette.purple, 15),
            purple = palette.pink,
            purple_bright = lighten(palette.pink, 15),
            cyan = palette.cyan,
            cyan_bright = lighten(palette.cyan, 15),
            white = palette.subtle,
            white_bright = lighten(palette.subtle, 15),
        },
        nvim_cmp = {
            CmpItemAbbrDeprecated = { bg = "NONE", strikethrough = true, fg = palette.subtle },
            CmpItemAbbrMatch = { bg = selection_background_color, fg = selection_text_color },
            CmpItemAbbrMatchFuzzy = { link = "CmpIntemAbbrMatch" },
            CmpItemKindFunction = { bg = "NONE", fg = function_text_color, },
            CmpItemKindInterface = { bg = "NONE", fg = type_text_color, },
            CmpItemKindKeyword = { bg = "NONE", fg = keyword_text_color, },
            CmpItemKindMethod = { link = "CmpItemKindFunction" },
            CmpItemKindProperty = { link = "CmpItemKindKeyword" },
            CmpItemKindText = { link = "CmpItemKindVariable" },
            CmpItemKindUnit = { link = "CmpItemKindKeyword" },
            CmpItemKindVariable = { bg = "NONE", fg = variable_text_color, },
        }
    }
end

local function set_highlight(group, highlight)
    vim.api.nvim_set_hl(0, group, highlight)
end

local function set_highlights(c)
    for group, highlight in pairs(c) do
        set_highlight(group, highlight)
    end
end

local function set_terminal_colors(c)
    vim.g.terminal_color_0 = c.black
    vim.g.terminal_color_1 = c.red
    vim.g.terminal_color_2 = c.green
    vim.g.terminal_color_3 = c.yellow
    vim.g.terminal_color_4 = c.blue
    vim.g.terminal_color_5 = c.magenta
    vim.g.terminal_color_6 = c.cyan
    vim.g.terminal_color_7 = c.white
    vim.g.terminal_color_8 = c.black_bright
    vim.g.terminal_color_9 = c.red_bright
    vim.g.terminal_color_10 = c.green_bright
    vim.g.terminal_color_11 = c.yellow_bright
    vim.g.terminal_color_12 = c.blue_bright
    vim.g.terminal_color_13 = c.magenta_bright
    vim.g.terminal_color_14 = c.cyan_bright
    vim.g.terminal_color_15 = c.white_bright
end

local function set_colors(c)
    set_highlights(c.editor)
    set_highlights(c.gitsigns)
    set_highlights(c.syntax)
    set_highlights(c.treesitter)
    set_highlights(c.nvim_cmp)
    set_terminal_colors(c.terminal)
end

local M = {}

function M.load()
    set_colors(night_colors())
end

return M
