local c = require("sakura.color-utils")
local night_palette = require("sakura.palettes.sakura-night")

local function night_highlights()
    local selection_background_color = night_palette.highlight_medium
    local selection_text_color = night_palette.text

    local separator_color = night_palette.highlight_high
    local statusline_background_color = night_palette.surface

    local variable_text_color = night_palette.text
    local parameter_text_color = night_palette.purple
    local constant_text_color = night_palette.purple
    local property_text_color = night_palette.green
    local keyword_text_color = night_palette.pink
    local number_text_color = night_palette.pink
    local boolean_text_color = night_palette.pink
    local string_text_color = night_palette.yellow
    local function_text_color = night_palette.cyan
    local metadata_text_color = night_palette.green
    local type_text_color = night_palette.yellow
    local comment_text_color = night_palette.subtle
    local operator_text_color = night_palette.subtle
    local punctuation_text_color = night_palette.subtle
    local whitespace_text_color = night_palette.muted

    return {
        diagnostics = {
            DiagnosticError = { fg = night_palette.red, },
            DiagnosticHint = { fg = night_palette.purple, },
            DiagnosticInfo = { fg = night_palette.cyan, },
            DiagnosticOk = { fg = night_palette.green, },
            DiagnosticUnderlineError = { sp = night_palette.red, },
            DiagnosticUnderlineHint = { sp = night_palette.purple, },
            DiagnosticUnderlineInfo = { sp = night_palette.cyan, },
            DiagnosticUnderlineOk = { sp = night_palette.green, },
            DiagnosticUnderlineWarn = { sp = night_palette.yellow, },
            DiagnosticVirtualTextError = { fg = night_palette.red, bg = night_palette.red_background, },
            DiagnosticVirtualTextHint = { fg = night_palette.purple, bg = night_palette.purple_background, },
            DiagnosticVirtualTextInfo = { fg = night_palette.cyan, bg = night_palette.cyan_background, },
            DiagnosticVirtualTextOk = { fg = night_palette.green, bg = night_palette.green_background, },
            DiagnosticVirtualTextWarn = { fg = night_palette.yellow, bg = night_palette.yellow_background, },
            DiagnosticWarn = { fg = night_palette.yellow, },
        },
        editor = {
            CurSearch    = { link = "IncSearch" },
            Cursor       = { fg = night_palette.text, bg = night_palette.pink },
            CursorColumn = { link = "CursorLine" },
            CursorIM     = { link = "Cursor" },
            CursorLine   = { bg = night_palette.highlight_low },
            CursorLineNr = { fg = night_palette.pink, bold = true },
            DiffAdd      = { bg = night_palette.green_background, },
            DiffChange   = { bg = night_palette.cyan_background, },
            DiffDelete   = { bg = night_palette.red_background, },
            DiffText     = { bg = c.saturate(night_palette.cyan_background, 10), },
            Directory    = { fg = night_palette.yellow, },
            EndOfBuffer  = { fg = whitespace_text_color, },
            ErrorMsg     = { fg = night_palette.red, },
            FoldColumn   = { fg = night_palette.subtle },
            IncSearch    = { fg = night_palette.text, bg = selection_background_color },
            LineNr       = { fg = night_palette.subtle },
            MatchParen   = { fg = night_palette.pink, bold = true },
            MoreMsg      = { fg = night_palette.cyan, },
            NonText      = { fg = whitespace_text_color, },
            Normal       = { fg = night_palette.text, bg = night_palette.base, },
            NormalFloat  = { link = "Normal" },
            NormalNC     = { fg = night_palette.subtle, bg = night_palette.base, },
            Pmenu        = { fg = night_palette.subtle, bg = night_palette.surface, },
            PmenuSbar    = { link = "Pmenu" },
            PmenuSel     = { fg = night_palette.text, bg = night_palette.overlay, },
            PmenuThumb   = { bg = night_palette.overlay, },
            QuickFixLine = { link = "CursorLine" },
            Search       = { fg = night_palette.text, bg = night_palette.highlight_medium },
            SignColumn   = { fg = night_palette.subtle },
            SignColumnSB = { link = "SignColumn" },
            SpellBad     = { sp = night_palette.red, undercurl = true },
            SpellCap     = { sp = night_palette.yellow, undercurl = true },
            SpellLocal   = { sp = night_palette.purple, undercurl = true },
            SpellRare    = { sp = night_palette.purple, undercurl = true },
            StatusLine   = { fg = night_palette.text, bg = statusline_background_color },
            StatusLineNC = { fg = night_palette.text, bg = statusline_background_color },
            Title        = { fg = night_palette.text, bold = true },
            VertSplit    = { link = "WinSeparator", },
            Visual       = { bg = selection_background_color, },
            VisualNOS    = { link = "Visual" },
            WarningMsg   = { fg = night_palette.yellow },
            Whitespace   = { fg = whitespace_text_color, },
            WinSeparator = { fg = separator_color, },
            lCursor      = { link = "Cursor" },
        },
        folds = {
            Folded = { bg = night_palette.surface, },
        },
        gitsigns = {
            GitSignsAdd = { fg = night_palette.green, },
            GitSignsAddInline = { bg = night_palette.green_background, },
            GitSignsAddLn = { bg = night_palette.green_background, },
            GitSignsAddLnInline = { link = "GitSignsAddLn", },
            GitSignsAddNr = { link = "GitSignsAdd", },
            GitSignsAddPreview = { link = "GitSignsAddLnInline", },
            GitSignsChange = { fg = night_palette.cyan, },
            GitSignsChangeInline = { bg = night_palette.cyan_background, },
            GitSignsChangeLn = { bg = night_palette.cyan_background, },
            GitSignsChangeLnInline = { link = "GitSignsChangeLn", },
            GitSignsChangeNr = { link = "GitSignsChange", },
            GitSignsDelete = { fg = night_palette.red, },
            GitSignsDeleteInline = { bg = night_palette.red_background, },
            GitSignsDeleteLn = { bg = night_palette.red_background, },
            GitSignsDeleteLnInline = { link = "GitSignsDeleteLn", },
            GitSignsDeleteNr = { link = "GitSignsDelete", },
            GitSignsDeletePreview = { link = "GitSignsDeleteLnInline", },
            GitSignsUntracked = { fg = night_palette.yellow, },
            GitSignsUntrackedInline = { bg = night_palette.yellow_background, },
            GitSignsUntrackedLn = { bg = night_palette.yellow_background, },
            GitSignsUntrackedLnInline = { link = "GitSignsUntrackedLn", },
            GitSignsUntrackedNr = { link = "GitSignsUntracked", },
        },
        indent_blankline = {
            IblIndent = { fg = whitespace_text_color, },
            IblWhitespace = { fg = whitespace_text_color, },
            IblScope = { fg = night_palette.pink, },
        },
        nvim_cmp = {
            CmpItemAbbrDeprecated = { bg = "NONE", strikethrough = true, fg = night_palette.subtle },
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
        },
        nvim_ufo = {
            UfoFoldedBg = { bg = night_palette.surface, },
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
            Error         = { fg = night_palette.red, },
            Exception     = { link = "Keyword" },
            Float         = { link = "Number" },
            Function      = { fg = night_palette.cyan },
            Identifier    = { fg = night_palette.text },
            Include       = { link = "PreProc" },
            Italic        = { italic = true },
            Keyword       = { fg = night_palette.pink },
            Label         = { link = "Keyword" },
            Macro         = { link = "PreProc" },
            Number        = { fg = night_palette.purple },
            Operator      = { fg = night_palette.subtle },
            PreCondit     = { link = "PreProc" },
            PreProc       = { fg = night_palette.purple },
            Repeat        = { link = "Keyword" },
            Special       = { fg = night_palette.subtle },
            SpecialChar   = { fg = night_palette.subtle },
            Statement     = { link = "Keyword" },
            StorageClass  = { link = "Type" },
            String        = { link = "@string", },
            Structure     = { link = "Keyword" },
            Tag           = { fg = night_palette.pink },
            Todo          = { fg = night_palette.yellow, },
            Type          = { fg = night_palette.yellow },
            Typedef       = { link = "Type" },
            Underlined    = { underline = true },
            diffAdded     = { fg = night_palette.green },
            diffChanged   = { fg = night_palette.cyan },
            diffFile      = { fg = night_palette.purple },
            diffIndexLine = { fg = night_palette.green },
            diffLine      = { fg = night_palette.pink },
            diffNewFile   = { fg = night_palette.cyan },
            diffOldFile   = { fg = night_palette.yellow },
            diffRemoved   = { fg = night_palette.red },
        },
        telescope = {
            TelescopeBorder = { fg = night_palette.highlight_high, },
            TelescopeNormal = { fg = night_palette.text, },
            TelescopePromptCounter = { fg = night_palette.yellow, },
            TelescopeTitle = { fg = night_palette.subtle, },
        },
        treesitter = {
            ["@attribute"] = { fg = metadata_text_color, },
            ["@attribute.builtin"] = { link = "@attribute", },
            ["@boolean"] = { fg = boolean_text_color, },
            ["@character"] = { link = "@string", },
            ["@character.special"] = { link = "@character", },
            ["@comment"] = { fg = comment_text_color, },
            ["@comment.documentation"] = { link = "@comment", },
            ["@comment.error"] = { fg = night_palette.red, },
            ["@comment.info"] = { fg = night_palette.cyan, },
            ["@comment.note"] = { fg = night_palette.purple, },
            ["@comment.todo"] = { fg = night_palette.yellow, },
            ["@comment.warning"] = { fg = night_palette.yellow, },
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
            ["@parameter"] = { fg = parameter_text_color, },
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
        treesitter_context = {
            TreesitterContext = { bg = night_palette.surface, },
            TreesitterContextLineNumber = { bg = night_palette.surface, },
        },
        terminal = {
            black = c.lighten(night_palette.base, 10),
            black_bright = c.lighten(night_palette.base, 20),
            red = night_palette.red,
            red_bright = c.lighten(night_palette.red, 15),
            green = night_palette.green,
            green_bright = c.lighten(night_palette.green, 15),
            yellow = night_palette.yellow,
            yellow_bright = c.lighten(night_palette.yellow, 15),
            blue = night_palette.purple,
            blue_bright = c.lighten(night_palette.purple, 15),
            magenta = night_palette.pink,
            magenta_bright = c.lighten(night_palette.pink, 15),
            cyan = night_palette.cyan,
            cyan_bright = c.lighten(night_palette.cyan, 15),
            white = night_palette.subtle,
            white_bright = c.lighten(night_palette.subtle, 15),
        },
    }
end

local function set_highlights(highlight)
    for group, hl in pairs(highlight) do
        for key, value in pairs(hl) do
            if key == "fg" or key == "bg" or key == "sp" then
                if type(value) == "table" then
                    hl[key] = c.hsl_to_hex(value)
                end
            end
        end
        vim.api.nvim_set_hl(0, group, hl)
    end
end

local function set_terminal_colors(terminal_colors)
    vim.g.terminal_color_0 = c.hsl_to_hex(terminal_colors.black)
    vim.g.terminal_color_1 = c.hsl_to_hex(terminal_colors.red)
    vim.g.terminal_color_2 = c.hsl_to_hex(terminal_colors.green)
    vim.g.terminal_color_3 = c.hsl_to_hex(terminal_colors.yellow)
    vim.g.terminal_color_4 = c.hsl_to_hex(terminal_colors.blue)
    vim.g.terminal_color_5 = c.hsl_to_hex(terminal_colors.magenta)
    vim.g.terminal_color_6 = c.hsl_to_hex(terminal_colors.cyan)
    vim.g.terminal_color_7 = c.hsl_to_hex(terminal_colors.white)
    vim.g.terminal_color_8 = c.hsl_to_hex(terminal_colors.black_bright)
    vim.g.terminal_color_9 = c.hsl_to_hex(terminal_colors.red_bright)
    vim.g.terminal_color_10 = c.hsl_to_hex(terminal_colors.green_bright)
    vim.g.terminal_color_11 = c.hsl_to_hex(terminal_colors.yellow_bright)
    vim.g.terminal_color_12 = c.hsl_to_hex(terminal_colors.blue_bright)
    vim.g.terminal_color_13 = c.hsl_to_hex(terminal_colors.magenta_bright)
    vim.g.terminal_color_14 = c.hsl_to_hex(terminal_colors.cyan_bright)
    vim.g.terminal_color_15 = c.hsl_to_hex(terminal_colors.white_bright)
end

local function set_all_highlights(highlights)
    set_highlights(highlights.diagnostics)
    set_highlights(highlights.editor)
    set_highlights(highlights.folds)
    set_highlights(highlights.gitsigns)
    set_highlights(highlights.indent_blankline)
    set_highlights(highlights.nvim_cmp)
    set_highlights(highlights.nvim_ufo)
    set_highlights(highlights.syntax)
    set_highlights(highlights.telescope)
    set_highlights(highlights.treesitter)
    set_highlights(highlights.treesitter_context)
    set_terminal_colors(highlights.terminal)
end

local M = {}

function M.load()
    set_all_highlights(night_highlights())
end

return M
