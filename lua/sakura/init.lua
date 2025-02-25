local c = require("sakura.color-utils")

local function highlights(palette)
    local selection_background_color = palette.highlight_medium
    local selection_text_color = palette.text

    local separator_color = palette.highlight_high

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

    local git_added_text_color = palette.green
    local git_added_background_color = palette.green_background
    local git_changed_text_color = palette.purple
    local git_changed_background_color = palette.purple_background
    local git_removed_text_color = palette.red
    local git_removed_background_color = palette.red_background
    local git_untracked_text_color = palette.yellow
    local git_untracked_background_color = palette.yellow_background

    return {
        diagnostics = {
            DiagnosticError = { fg = palette.red, },
            DiagnosticHint = { fg = palette.purple, },
            DiagnosticInfo = { fg = palette.cyan, },
            DiagnosticOk = { fg = palette.green, },
            DiagnosticUnderlineError = { sp = palette.red, undercurl = true, },
            DiagnosticUnderlineHint = { sp = palette.purple, undercurl = true, },
            DiagnosticUnderlineInfo = { sp = palette.cyan, undercurl = true, },
            DiagnosticUnderlineOk = { sp = palette.green, undercurl = true, },
            DiagnosticUnderlineWarn = { sp = palette.yellow, undercurl = true, },
            DiagnosticVirtualTextError = { fg = palette.red, bg = palette.red_background, },
            DiagnosticVirtualTextHint = { fg = palette.purple, bg = palette.purple_background, },
            DiagnosticVirtualTextInfo = { fg = palette.cyan, bg = palette.cyan_background, },
            DiagnosticVirtualTextOk = { fg = palette.green, bg = palette.green_background, },
            DiagnosticVirtualTextWarn = { fg = palette.yellow, bg = palette.yellow_background, },
            DiagnosticWarn = { fg = palette.yellow, },
        },
        editor = {
            CurSearch    = { link = "IncSearch", },
            Cursor       = { fg = palette.cursor_text, bg = palette.cursor_background, },
            CursorColumn = { link = "CursorLine", },
            CursorIM     = { link = "Cursor", },
            CursorLine   = { bg = palette.highlight_low, },
            CursorLineNr = { fg = palette.pink, },
            DiffAdd      = { bg = git_added_background_color, },
            DiffChange   = { bg = git_changed_background_color, },
            DiffDelete   = { bg = git_removed_background_color, },
            DiffText     = { bg = c.saturate(git_changed_text_color, 10), },
            Directory    = { fg = palette.yellow, },
            EndOfBuffer  = { fg = whitespace_text_color, },
            ErrorMsg     = { fg = palette.red, },
            FoldColumn   = { fg = palette.subtle, },
            IncSearch    = { fg = palette.text, bg = selection_background_color, },
            LineNr       = { fg = palette.subtle, },
            MatchParen   = { fg = palette.pink, bold = true, },
            ModeMsg      = { link = "MoreMsg", },
            MoreMsg      = { fg = palette.pink, },
            NonText      = { fg = palette.subtle, },
            Normal       = { fg = palette.text, bg = palette.base, },
            NormalFloat  = { link = "Normal", },
            NormalNC     = { fg = palette.subtle, bg = palette.base, },
            Pmenu        = { fg = palette.subtle, bg = palette.surface, },
            PmenuSbar    = { link = "Pmenu", },
            PmenuSel     = { fg = palette.text, bg = palette.overlay, },
            PmenuThumb   = { bg = palette.overlay, },
            Question     = { link = "MoreMsg", },
            QuickFixLine = { link = "CursorLine", },
            Search       = { fg = palette.text, bg = palette.highlight_medium, },
            SignColumn   = { fg = palette.subtle, },
            SignColumnSB = { link = "SignColumn", },
            SpellBad     = { sp = palette.red, undercurl = true, },
            SpellCap     = { sp = palette.yellow, undercurl = true, },
            SpellLocal   = { sp = palette.purple, undercurl = true, },
            SpellRare    = { sp = palette.purple, undercurl = true, },
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
            GitSignsAdd = { fg = git_added_text_color, },
            GitSignsAddInline = { bg = git_added_background_color, },
            GitSignsAddLn = { bg = git_added_background_color, },
            GitSignsAddLnInline = { link = "GitSignsAddLn", },
            GitSignsAddNr = { link = "GitSignsAdd", },
            GitSignsAddPreview = { link = "GitSignsAddLnInline", },
            GitSignsChange = { fg = git_changed_text_color, },
            GitSignsChangeInline = { bg = git_changed_background_color, },
            GitSignsChangeLn = { bg = git_changed_background_color, },
            GitSignsChangeLnInline = { link = "GitSignsChangeLn", },
            GitSignsChangeNr = { link = "GitSignsChange", },
            GitSignsCurrentLineBlame = { fg = palette.subtle, },
            GitSignsDelete = { fg = git_removed_text_color, },
            GitSignsDeleteInline = { bg = git_removed_background_color, },
            GitSignsDeleteLn = { bg = git_removed_background_color, },
            GitSignsDeleteLnInline = { link = "GitSignsDeleteLn", },
            GitSignsDeleteNr = { link = "GitSignsDelete", },
            GitSignsDeletePreview = { link = "GitSignsDeleteLnInline", },
            GitSignsUntracked = { fg = git_untracked_text_color, },
            GitSignsUntrackedInline = { bg = git_untracked_background_color, },
            GitSignsUntrackedLn = { bg = git_untracked_background_color, },
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
        statusline = {
            StatusLine                  = { fg = palette.text, bg = palette.surface, },
            StatusLineNC                = { fg = palette.text, bg = palette.surface, },
            StatusLineDiagnostic        = { link = "StatusLine", },
            StatusLineDiagnosticError   = { link = "DiagnosticError", },
            StatusLineDiagnosticWarning = { link = "DiagnosticWarn", },
            StatusLineDiagnosticHint    = { link = "DiagnosticHint", },
            StatusLineDiagnosticInfo    = { link = "DiagnosticInfo", },
            StatusLineModeNormal        = { bg = palette.pink, fg = palette.white, bold = true, },
            StatusLineModeInsert        = { bg = palette.yellow, fg = palette.white, bold = true, },
            StatusLineModeVisual        = { bg = palette.cyan, fg = palette.white, bold = true, },
            StatusLineModeSelect        = { link = "StatusLineModeVisual", },
            StatusLineModeReplace       = { bg = palette.red, fg = palette.white, bold = true, },
            StatusLineModeCommand       = { bg = palette.green, fg = palette.white, bold = true, },
            StatusLineModeTerminal      = { bg = palette.purple, fg = palette.white, bold = true, },
            StatusLineFileName          = { bg = palette.overlay, },
            StatusLineFileDirectory     = { fg = palette.subtle, },
            StatusLineFileBaseName      = { fg = palette.text, },
            StatusLineFileModified      = { fg = palette.green, },
            StatusLineFileReadonly      = { fg = palette.yellow, },
            StatusLineFileEncoding      = { bg = palette.overlay, },
            StatusLineGit               = { link = "StatusLine", },
            StatusLineGitOn             = { fg = palette.subtle, },
            StatusLineGitBranch         = { fg = palette.pink, },
            StatusLineGitAdded          = { fg = git_added_text_color, },
            StatusLineGitChanged        = { fg = git_changed_text_color, },
            StatusLineGitRemoved        = { fg = git_removed_text_color, },
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
            diffAdded     = { fg = git_added_text_color, },
            diffChanged   = { fg = git_changed_text_color, },
            diffFile      = { fg = palette.cyan, },
            diffIndexLine = { fg = palette.green, },
            diffLine      = { fg = palette.pink, },
            diffNewFile   = { fg = palette.purple, },
            diffOldFile   = { fg = palette.yellow, },
            diffRemoved   = { fg = git_removed_text_color, },
        },
        telescope = {
            TelescopeBorder = { fg = palette.highlight_high, },
            TelescopeNormal = { fg = palette.text, },
            TelescopePromptCounter = { fg = palette.yellow, },
            TelescopeTitle = { fg = palette.text, },
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
    }
end

local function terminal_highlights(palette)
    if palette.is_dark then
        return {
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
        }
    else
        return {
            black = c.darken(palette.base, 10),
            black_bright = c.darken(palette.base, 20),
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
            white = palette.text,
            white_bright = c.lighten(palette.text, 15),
        }
    end
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

local function set_all_highlights(hl, terminal_hl)
    for _, hls in pairs(hl) do
        set_highlights(hls)
    end
    set_terminal_colors(terminal_hl)
end

local M = {}

---@param theme string
function M.load(theme)
    local palette = require("sakura.palettes.sakura-" .. theme)
    local hl = highlights(palette)
    local terminal_hl = terminal_highlights(palette)
    set_all_highlights(hl, terminal_hl)

    -- Primitive Ghostty theme generator
    -- print("palette = 0=" .. c.hsl_to_hex(terminal_hl.black))
    -- print("palette = 1=" .. c.hsl_to_hex(terminal_hl.red))
    -- print("palette = 2=" .. c.hsl_to_hex(terminal_hl.green))
    -- print("palette = 3=" .. c.hsl_to_hex(terminal_hl.yellow))
    -- print("palette = 4=" .. c.hsl_to_hex(terminal_hl.blue))
    -- print("palette = 5=" .. c.hsl_to_hex(terminal_hl.magenta))
    -- print("palette = 6=" .. c.hsl_to_hex(terminal_hl.cyan))
    -- print("palette = 7=" .. c.hsl_to_hex(terminal_hl.white))
    -- print("palette = 8=" .. c.hsl_to_hex(terminal_hl.black_bright))
    -- print("palette = 9=" .. c.hsl_to_hex(terminal_hl.red_bright))
    -- print("palette = 10=" .. c.hsl_to_hex(terminal_hl.green_bright))
    -- print("palette = 11=" .. c.hsl_to_hex(terminal_hl.yellow_bright))
    -- print("palette = 12=" .. c.hsl_to_hex(terminal_hl.blue_bright))
    -- print("palette = 13=" .. c.hsl_to_hex(terminal_hl.magenta_bright))
    -- print("palette = 14=" .. c.hsl_to_hex(terminal_hl.cyan_bright))
    -- print("palette = 15=" .. c.hsl_to_hex(terminal_hl.white_bright))
    -- print("background=" .. c.hsl_to_hex(palette.base))
    -- print("foreground=" .. c.hsl_to_hex(palette.text))
    -- print("cursor-color=" .. hl.editor.Cursor.bg)
    -- print("cursor-text=" .. hl.editor.Cursor.fg)
    -- print("selection-background=" .. c.hsl_to_hex(terminal_hl.black))
    -- print("selection-foreground=" .. c.hsl_to_hex(palette.text))
end

return M
