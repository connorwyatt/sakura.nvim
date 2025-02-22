local c = require("sakura.color-utils")

local function highlights(palette)
    local selection_background_color = palette.highlight_medium
    local selection_text_color = palette.text

    local separator_color = palette.highlight_high
    local statusline_background_color = palette.surface

    local variable_text_color = palette.text
    local parameter_text_color = palette.purple
    local constant_text_color = palette.purple
    local property_text_color = palette.green
    local keyword_text_color = palette.pink
    local number_text_color = palette.pink
    local boolean_text_color = palette.pink
    local string_text_color = palette.yellow
    local function_text_color = palette.cyan
    local metadata_text_color = palette.green
    local type_text_color = palette.yellow
    local comment_text_color = palette.subtle
    local operator_text_color = palette.subtle
    local punctuation_text_color = palette.subtle
    local whitespace_text_color = palette.muted

    return {
        diagnostics = {
            DiagnosticError = { fg = palette.red, },
            DiagnosticHint = { fg = palette.purple, },
            DiagnosticInfo = { fg = palette.cyan, },
            DiagnosticOk = { fg = palette.green, },
            DiagnosticUnderlineError = { sp = palette.red, },
            DiagnosticUnderlineHint = { sp = palette.purple, },
            DiagnosticUnderlineInfo = { sp = palette.cyan, },
            DiagnosticUnderlineOk = { sp = palette.green, },
            DiagnosticUnderlineWarn = { sp = palette.yellow, },
            DiagnosticVirtualTextError = { fg = palette.red, bg = palette.red_background, },
            DiagnosticVirtualTextHint = { fg = palette.purple, bg = palette.purple_background, },
            DiagnosticVirtualTextInfo = { fg = palette.cyan, bg = palette.cyan_background, },
            DiagnosticVirtualTextOk = { fg = palette.green, bg = palette.green_background, },
            DiagnosticVirtualTextWarn = { fg = palette.yellow, bg = palette.yellow_background, },
            DiagnosticWarn = { fg = palette.yellow, },
        },
        editor = {
            CurSearch    = { link = "IncSearch", },
            Cursor       = { fg = palette.text, bg = palette.pink, },
            CursorColumn = { link = "CursorLine", },
            CursorIM     = { link = "Cursor", },
            CursorLine   = { bg = palette.highlight_low, },
            CursorLineNr = { fg = palette.pink, },
            DiffAdd      = { bg = palette.green_background, },
            DiffChange   = { bg = palette.cyan_background, },
            DiffDelete   = { bg = palette.red_background, },
            DiffText     = { bg = c.saturate(palette.cyan_background, 10), },
            Directory    = { fg = palette.yellow, },
            EndOfBuffer  = { fg = whitespace_text_color, },
            ErrorMsg     = { fg = palette.red, },
            FoldColumn   = { fg = palette.subtle, },
            IncSearch    = { fg = palette.text, bg = selection_background_color, },
            LineNr       = { fg = palette.subtle, },
            MatchParen   = { fg = palette.pink, bold = true, },
            ModeMsg      = { link = "MoreMsg", },
            MoreMsg      = { fg = palette.pink, },
            NonText      = { fg = whitespace_text_color, },
            Normal       = { fg = palette.text, bg = palette.base, },
            NormalFloat  = { link = "Normal", },
            NormalNC     = { fg = palette.subtle, bg = palette.base, },
            Pmenu        = { fg = palette.subtle, bg = palette.surface, },
            PmenuSbar    = { link = "Pmenu", },
            PmenuSel     = { fg = palette.text, bg = palette.overlay, },
            PmenuThumb   = { bg = palette.overlay, },
            QuickFixLine = { link = "CursorLine", },
            Search       = { fg = palette.text, bg = palette.highlight_medium, },
            SignColumn   = { fg = palette.subtle, },
            SignColumnSB = { link = "SignColumn", },
            SpellBad     = { sp = palette.red, undercurl = true, },
            SpellCap     = { sp = palette.yellow, undercurl = true, },
            SpellLocal   = { sp = palette.purple, undercurl = true, },
            SpellRare    = { sp = palette.purple, undercurl = true, },
            StatusLine   = { fg = palette.text, bg = statusline_background_color, },
            StatusLineNC = { fg = palette.text, bg = statusline_background_color, },
            Title        = { fg = palette.text, bold = true, },
            VertSplit    = { link = "WinSeparator", },
            Visual       = { bg = selection_background_color, },
            VisualNOS    = { link = "Visual", },
            WarningMsg   = { fg = palette.yellow, },
            Whitespace   = { fg = whitespace_text_color, },
            WinSeparator = { fg = separator_color, },
            lCursor      = { link = "Cursor", },
        },
        folds = {
            Folded = { bg = palette.surface, },
        },
        gitsigns = {
            GitSignsAdd = { fg = palette.green, },
            GitSignsAddInline = { bg = palette.green_background, },
            GitSignsAddLn = { bg = palette.green_background, },
            GitSignsAddLnInline = { link = "GitSignsAddLn", },
            GitSignsAddNr = { link = "GitSignsAdd", },
            GitSignsAddPreview = { link = "GitSignsAddLnInline", },
            GitSignsChange = { fg = palette.cyan, },
            GitSignsChangeInline = { bg = palette.cyan_background, },
            GitSignsChangeLn = { bg = palette.cyan_background, },
            GitSignsChangeLnInline = { link = "GitSignsChangeLn", },
            GitSignsChangeNr = { link = "GitSignsChange", },
            GitSignsDelete = { fg = palette.red, },
            GitSignsDeleteInline = { bg = palette.red_background, },
            GitSignsDeleteLn = { bg = palette.red_background, },
            GitSignsDeleteLnInline = { link = "GitSignsDeleteLn", },
            GitSignsDeleteNr = { link = "GitSignsDelete", },
            GitSignsDeletePreview = { link = "GitSignsDeleteLnInline", },
            GitSignsUntracked = { fg = palette.yellow, },
            GitSignsUntrackedInline = { bg = palette.yellow_background, },
            GitSignsUntrackedLn = { bg = palette.yellow_background, },
            GitSignsUntrackedLnInline = { link = "GitSignsUntrackedLn", },
            GitSignsUntrackedNr = { link = "GitSignsUntracked", },
        },
        indent_blankline = {
            IblIndent = { fg = whitespace_text_color, },
            IblWhitespace = { fg = whitespace_text_color, },
            IblScope = { fg = palette.pink, },
        },
        nvim_cmp = {
            CmpItemAbbr = { fg = palette.text, },
            CmpItemAbbrDeprecated = { strikethrough = true, fg = palette.subtle, },
            CmpItemAbbrMatch = { bg = selection_background_color, fg = selection_text_color, },
            CmpItemAbbrMatchFuzzy = { bg = selection_background_color, fg = selection_text_color, },
            CmpItemKind = { fg = palette.text, },
            CmpItemKindClass = { fg = type_text_color, },
            CmpItemKindConstant = { fg = constant_text_color, },
            CmpItemKindConstructor = { link = "CmpItemKindFunction", },
            CmpItemKindEnum = { link = "CmpItemKindClass", },
            CmpItemKindEnumMember = { link = "CmpItemKindConstant", },
            CmpItemKindField = { link = "CmpItemKindProperty", },
            CmpItemKindFile = { link = "CmpItemKindFolder", },
            CmpItemKindFolder = { fg = palette.yellow, },
            CmpItemKindFunction = { fg = function_text_color, },
            CmpItemKindInterface = { link = "CmpItemKindClass", },
            CmpItemKindKeyword = { fg = keyword_text_color, },
            CmpItemKindMethod = { link = "CmpItemKindFunction", },
            CmpItemKindOperator = { fg = operator_text_color, },
            CmpItemKindProperty = { fg = property_text_color, },
            CmpItemKindSnippet = { fg = palette.red, },
            CmpItemKindStruct = { link = "CmpItemKindClass", },
            CmpItemKindText = { fg = palette.subtle, },
            CmpItemKindUnit = { link = "CmpItemKindKeyword", },
            CmpItemKindVariable = { fg = variable_text_color, },
        },
        nvim_ufo = {
            UfoFoldedBg = { bg = palette.surface, },
        },
        syntax = {
            Bold          = { bold = true, },
            Boolean       = { link = "Number", },
            Character     = { link = "String", },
            Comment       = { fg = comment_text_color, },
            Conditional   = { link = "Keyword", },
            Constant      = { fg = constant_text_color, },
            Define        = { link = "PreProc", },
            Delimiter     = { fg = punctuation_text_color, },
            Error         = { fg = palette.red, },
            Exception     = { link = "Keyword", },
            Float         = { link = "Number", },
            Function      = { fg = palette.cyan, },
            Identifier    = { fg = palette.text, },
            Include       = { link = "PreProc", },
            Italic        = { italic = true, },
            Keyword       = { fg = palette.pink, },
            Label         = { link = "Keyword", },
            Macro         = { link = "PreProc", },
            Number        = { fg = palette.purple, },
            Operator      = { fg = palette.subtle, },
            PreCondit     = { link = "PreProc", },
            PreProc       = { fg = palette.purple, },
            Repeat        = { link = "Keyword", },
            Special       = { fg = palette.subtle, },
            SpecialChar   = { fg = palette.subtle, },
            Statement     = { link = "Keyword", },
            StorageClass  = { link = "Type", },
            String        = { link = "@string", },
            Structure     = { link = "Keyword", },
            Tag           = { fg = palette.pink, },
            Todo          = { fg = palette.yellow, },
            Type          = { fg = palette.yellow, },
            Typedef       = { link = "Type", },
            Underlined    = { underline = true, },
            diffAdded     = { fg = palette.green, },
            diffChanged   = { fg = palette.cyan, },
            diffFile      = { fg = palette.purple, },
            diffIndexLine = { fg = palette.green, },
            diffLine      = { fg = palette.pink, },
            diffNewFile   = { fg = palette.cyan, },
            diffOldFile   = { fg = palette.yellow, },
            diffRemoved   = { fg = palette.red, },
        },
        telescope = {
            TelescopeBorder = { fg = palette.highlight_high, },
            TelescopeNormal = { fg = palette.text, },
            TelescopePromptCounter = { fg = palette.yellow, },
            TelescopeTitle = { fg = palette.subtle, },
        },
        treesitter = {
            ["@attribute"] = { fg = metadata_text_color, },
            ["@attribute.builtin"] = { link = "@attribute", },
            ["@boolean"] = { fg = boolean_text_color, },
            ["@character"] = { link = "@string", },
            ["@character.special"] = { link = "@character", },
            ["@comment"] = { fg = comment_text_color, },
            ["@comment.documentation"] = { fg = palette.green, },
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
            TreesitterContext = { bg = palette.surface, },
            TreesitterContextLineNumber = { bg = palette.surface, },
        },
        terminal = {
            black = c.lighten(palette.base, 10),
            black_bright = c.lighten(palette.base, 20),
            red = palette.red,
            red_bright = c.lighten(palette.red, 15),
            green = palette.green,
            green_bright = c.lighten(palette.green, 15),
            yellow = palette.yellow,
            yellow_bright = c.lighten(palette.yellow, 15),
            blue = palette.purple,
            blue_bright = c.lighten(palette.purple, 15),
            magenta = palette.pink,
            magenta_bright = c.lighten(palette.pink, 15),
            cyan = palette.cyan,
            cyan_bright = c.lighten(palette.cyan, 15),
            white = palette.subtle,
            white_bright = c.lighten(palette.subtle, 15),
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

local function set_all_highlights(hl)
    set_highlights(hl.diagnostics)
    set_highlights(hl.editor)
    set_highlights(hl.folds)
    set_highlights(hl.gitsigns)
    set_highlights(hl.indent_blankline)
    set_highlights(hl.nvim_cmp)
    set_highlights(hl.nvim_ufo)
    set_highlights(hl.syntax)
    set_highlights(hl.telescope)
    set_highlights(hl.treesitter)
    set_highlights(hl.treesitter_context)
    set_terminal_colors(hl.terminal)
end

local M = {}

---@param theme string
function M.load(theme)
    set_all_highlights(highlights(require("sakura.palettes.sakura-" .. theme)))
end

return M
