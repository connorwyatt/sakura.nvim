local c = require("sakura.color-utils")

local function highlights(palette)
    local float_background_color = palette.surface

    local strong_selection_background_color = palette.highlight_high
    local selection_background_color = palette.highlight_medium

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
    local git_changed_text_color = palette.cyan
    local git_changed_background_color = palette.cyan_background
    local git_removed_text_color = palette.red
    local git_removed_background_color = palette.red_background
    local git_untracked_text_color = palette.purple
    local git_untracked_background_color = palette.purple_background

    return {
        blink_cmp = {
            BlinkCmpMenuSelection = { bg = selection_background_color, },
            BlinkCmpScrollBarThumb = { bg = palette.muted, },
            BlinkCmpScrollBarGutter = { bg = palette.overlay, },
            BlinkCmpLabel = { fg = palette.text, },
            BlinkCmpLabelDeprecated = { fg = palette.subtle, strikethrough = true, },
            BlinkCmpLabelMatch = { fg = palette.pink, bold = true, },
            BlinkCmpKind = { fg = palette.text, },
            BlinkCmpKindClass = { fg = type_text_color, },
            BlinkCmpKindConstant = { fg = constant_text_color, },
            BlinkCmpKindConstructor = { link = "BlinkCmpKindFunction", },
            BlinkCmpKindEnum = { link = "BlinkCmpKindClass", },
            BlinkCmpKindEnumMember = { link = "BlinkCmpKindConstant", },
            BlinkCmpKindField = { link = "BlinkCmpKindProperty", },
            BlinkCmpKindFile = { link = "BlinkCmpKindFolder", },
            BlinkCmpKindFolder = { fg = palette.yellow, },
            BlinkCmpKindFunction = { fg = function_text_color, },
            BlinkCmpKindInterface = { link = "BlinkCmpKindClass", },
            BlinkCmpKindKeyword = { fg = keyword_text_color, },
            BlinkCmpKindMethod = { link = "BlinkCmpKindFunction", },
            BlinkCmpKindOperator = { fg = operator_text_color, },
            BlinkCmpKindProperty = { fg = property_text_color, },
            BlinkCmpKindSnippet = { fg = palette.red, },
            BlinkCmpKindStruct = { link = "BlinkCmpKindClass", },
            BlinkCmpKindText = { fg = palette.subtle, },
            BlinkCmpKindUnit = { link = "BlinkCmpKindKeyword", },
            BlinkCmpKindVariable = { fg = variable_text_color, },
            BlinkCmpGhostText = { fg = palette.muted, },
            BlinkCmpSignatureHelp = { link = "NormalFloat", },
            BlinkCmpSignatureHelpActiveParameter = { bg = selection_background_color, },
        },
        dap = {
            DapBreakpointSign = { fg = palette.red, bg = palette.red_background, },
            DapBreakpointLine = { bg = palette.red_background, },
            DapBreakpointLineNumber = { bg = palette.red_background, },
            DapBreakpointConditionSign = { fg = palette.red, bg = palette.red_background, },
            DapBreakpointConditionLine = { bg = palette.red_background, },
            DapBreakpointConditionLineNumber = { bg = palette.red_background, },
            DapLogPointSign = { fg = palette.purple, bg = palette.purple_background, },
            DapLogPointLine = { bg = palette.purple_background, },
            DapLogPointLineNumber = { bg = palette.purple_background, },
            DapStoppedSign = { fg = palette.cyan, bg = palette.cyan_background, },
            DapStoppedLine = { bg = palette.cyan_background, },
            DapStoppedLineNumber = { bg = palette.cyan_background, },
            DapBreakpointRejectedSign = { fg = palette.subtle, },
            DapBreakpointRejectedLine = {},
            DapBreakpointRejectedLineNumber = {},
        },
        dap_ui = {
            DapUIBreakpointsCurrentLine = { fg = palette.green, bold = true, },
            DapUIBreakpointsDisabledLine = { fg = palette.subtle, },
            DapUIBreakpointsInfo = { fg = palette.green, },
            DapUIBreakpointsLine = { fg = palette.purple, },
            DapUIBreakpointsPath = { link = "DapUIScope", },
            DapUICurrentFrameName = { link = "DapUINormal", },
            DapUIDecoration = { fg = palette.subtle, },
            DapUIEndofBuffer = { link = "EndOfBuffer", },
            DapUIFloatBorder = { fg = separator_color, },
            DapUIFloatNormal = { link = "NormalFloat", },
            DapUIFrameName = { link = "Normal", },
            DapUILineNumber = { fg = palette.purple, },
            DapUIModifiedValue = { fg = palette.cyan, },
            DapUINormal = { link = "Normal", },
            DapUINormalNC = { link = "DapUINormal", },
            DapUIPlayPause = { fg = palette.green, bg = palette.surface, },
            DapUIPlayPauseNC = { fg = palette.green, bg = palette.surface, },
            DapUIRestart = { fg = palette.green, bg = palette.surface, },
            DapUIRestartNC = { fg = palette.green, bg = palette.surface, },
            DapUIScope = { fg = palette.text, bold = true, },
            DapUISource = { fg = palette.yellow, },
            DapUIStepBack = { fg = palette.cyan, bg = palette.surface, },
            DapUIStepBackNC = { fg = palette.cyan, bg = palette.surface, },
            DapUIStepInto = { fg = palette.cyan, bg = palette.surface, },
            DapUIStepIntoNC = { fg = palette.cyan, bg = palette.surface, },
            DapUIStepOut = { fg = palette.cyan, bg = palette.surface, },
            DapUIStepOutNC = { fg = palette.cyan, bg = palette.surface, },
            DapUIStepOver = { fg = palette.cyan, bg = palette.surface, },
            DapUIStepOverNC = { fg = palette.cyan, bg = palette.surface, },
            DapUIStop = { fg = palette.red, bg = palette.surface, },
            DapUIStopNC = { fg = palette.red, bg = palette.surface, },
            DapUIStoppedThread = { fg = palette.cyan, },
            DapUIThread = { fg = palette.green, },
            DapUIType = { fg = palette.yellow, },
            DapUIUnavailable = { fg = palette.subtle, bg = palette.surface, },
            DapUIUnavailableNC = { fg = palette.subtle, bg = palette.surface, },
            DapUIValue = { link = "DapUINormal", },
            DapUIVariable = { fg = palette.suble, },
            DapUIWatchesEmpty = { fg = palette.red, },
            DapUIWatchesError = { fg = palette.red, },
            DapUIWatchesValue = { fg = palette.green, },
            DapUIWinSelect = { fg = palette.cyan, bold = true, },
        },
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
            CurSearch         = { bg = strong_selection_background_color, },
            Cursor            = { fg = palette.cursor_text, bg = palette.cursor_background, },
            CursorColumn      = { link = "CursorLine", },
            CursorIM          = { link = "Cursor", },
            CursorLine        = { bg = palette.highlight_low, },
            CursorLineNr      = { fg = palette.pink, },
            Directory         = { fg = palette.yellow, },
            EndOfBuffer       = { fg = whitespace_text_color, },
            ErrorMsg          = { fg = palette.red, },
            FoldColumn        = { fg = palette.subtle, },
            IncSearch         = { link = "Search", },
            LineNr            = { fg = palette.subtle, },
            MatchParen        = { fg = palette.pink, bold = true, },
            ModeMsg           = { link = "MoreMsg", },
            MoreMsg           = { fg = palette.pink, },
            LspReferenceRead  = { link = "Search", },
            LspReferenceText  = { link = "LspReferenceRead" },
            LspReferenceWrite = { link = "LspReferenceRead" },
            NonText           = { fg = palette.subtle, },
            Normal            = { fg = palette.text, bg = palette.base, },
            NormalFloat       = { fg = palette.text, bg = float_background_color, },
            NormalNC          = { fg = palette.subtle, bg = palette.base, },
            Pmenu             = { fg = palette.subtle, bg = palette.surface, },
            PmenuSbar         = { link = "Pmenu", },
            PmenuSel          = { fg = palette.text, bg = palette.overlay, },
            PmenuThumb        = { bg = palette.overlay, },
            Question          = { link = "MoreMsg", },
            QuickFixLine      = { link = "CursorLine", },
            Search            = { bg = selection_background_color, },
            SignColumn        = { fg = palette.subtle, },
            SignColumnSB      = { link = "SignColumn", },
            SpellBad          = { sp = palette.red, undercurl = true, },
            SpellCap          = { sp = palette.yellow, undercurl = true, },
            SpellLocal        = { sp = palette.purple, undercurl = true, },
            SpellRare         = { sp = palette.purple, undercurl = true, },
            Title             = { fg = palette.text, bold = true, },
            FloatTitle        = { fg = palette.text, bg = float_background_color, bold = true, },
            VertSplit         = { link = "WinSeparator", },
            Visual            = { bg = selection_background_color, },
            VisualNOS         = { link = "Visual", },
            WarningMsg        = { fg = palette.yellow, },
            Whitespace        = { fg = whitespace_text_color, },
            WinBar            = { fg = palette.text, bg = palette.surface, },
            WinBarNC          = { fg = palette.subtle, bg = palette.surface, },
            WinSeparator      = { fg = separator_color, },
            lCursor           = { link = "Cursor", },
        },
        folds = {
            Folded = { bg = palette.surface, },
        },
        git = {
            Added      = { fg = git_added_text_color, },
            Removed    = { fg = git_removed_text_color, },
            DiffAdd    = { bg = git_added_background_color, },
            DiffChange = { bg = git_changed_background_color, },
            DiffDelete = { bg = git_removed_background_color, },
            DiffText   = { bg = c.blend(git_changed_text_color, 0.25, git_changed_background_color), },
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
        luasnip = {
            LuasnipChoiceNodeActive = { bg = selection_background_color, sp = palette.yellow, underdotted = true, },
            LuasnipChoiceNodePassive = { sp = palette.yellow, underdotted = true, },
            LuasnipInsertNodeActive = { bg = selection_background_color, sp = palette.cyan, underdotted = true, },
            LuasnipInsertNodePassive = { sp = palette.cyan, underdotted = true, },
        },
        neotree = {
            NeoTreeFileName = { fg = palette.text, },
            NeoTreeFileStats = { fg = palette.subtle, },
            NeoTreeRootName = { fg = palette.text, bold = true, },
            NeoTreeFileStatsHeader = { fg = palette.subtle, bold = true, },
            NeoTreeDotfile = { fg = palette.subtle, },
            NeoTreeModified = { link = "NeoTreeFileName", },
            NeoTreeGitAdded = { link = "GitSignsAdd", },
            NeoTreeGitDeleted = { link = "GitSignsDelete", },
            NeoTreeGitModified = { link = "GitSignsChange", },
            NeoTreeGitUntracked = { link = "GitSignsUntracked", },
            NeoTreeGitConflict = { link = "NeoTreeFileName", },
            NeoTreeGitStaged = { link = "NeoTreeFileName", },
            NeoTreeFloatTitle = { link = "FloatTitle", },
            NeoTreeDimText = { fg = palette.muted, },
            NeoTreeExpander = { fg = palette.subtle, },
            NeoTreeTitleBar = { link = "FloatTitle", },
        },
        nvim_ufo = {
            UfoFoldedBg = { bg = palette.surface, },
        },
        snacks = {
            SnacksIndent = { fg = whitespace_text_color, },
            SnacksIndentScope = { fg = palette.pink, },
        },
        statusline = {
            StatusLine                     = { fg = palette.text, bg = palette.overlay, },
            StatusLineAutoformatDisabled   = { fg = palette.subtle, },
            StatusLineAutoformatEnabled    = { fg = palette.pink, },
            StatusLineDiagnosticError      = { link = "DiagnosticError", },
            StatusLineDiagnosticHint       = { link = "DiagnosticHint", },
            StatusLineDiagnosticInfo       = { link = "DiagnosticInfo", },
            StatusLineDiagnosticWarning    = { link = "DiagnosticWarn", },
            StatusLineDivider              = { fg = palette.muted, },
            StatusLineFileBaseName         = { fg = palette.text, },
            StatusLineFileBaseNameModified = { fg = palette.text, bold = true, },
            StatusLineFileDirectory        = { fg = palette.subtle, },
            StatusLineFileModified         = { fg = palette.cyan, },
            StatusLineFileReadonly         = { fg = palette.yellow, },
            StatusLineGitAdded             = { fg = git_added_text_color, },
            StatusLineGitBranch            = { fg = palette.yellow, },
            StatusLineGitChanged           = { fg = git_changed_text_color, },
            StatusLineGitRemoved           = { fg = git_removed_text_color, },
            StatusLineInactive             = { fg = palette.subtle, bg = palette.base, },
            StatusLineModeCommand          = { bg = palette.pink, fg = palette.white, bold = true, },
            StatusLineModeCommandText      = { bg = "NONE", fg = palette.pink, bold = true, },
            StatusLineModeInsert           = { bg = palette.yellow, fg = palette.white, bold = true, },
            StatusLineModeInsertText       = { bg = "NONE", fg = palette.yellow, bold = true, },
            StatusLineModeNormal           = { bg = palette.subtle, fg = palette.base, bold = true, },
            StatusLineModeNormalText       = { bg = "NONE", fg = palette.subtle, bold = true, },
            StatusLineModeReplace          = { bg = palette.red, fg = palette.white, bold = true, },
            StatusLineModeReplaceText      = { bg = "NONE", fg = palette.red, bold = true, },
            StatusLineModeSelect           = { bg = palette.green, fg = palette.white, bold = true },
            StatusLineModeSelectText       = { bg = "NONE", fg = palette.green, bold = true, },
            StatusLineModeTerminal         = { bg = palette.purple, fg = palette.white, bold = true, },
            StatusLineModeTerminalText     = { bg = "NONE", fg = palette.purple, bold = true, },
            StatusLineModeVisual           = { bg = palette.cyan, fg = palette.white, bold = true, },
            StatusLineModeVisualText       = { bg = "NONE", fg = palette.cyan, bold = true, },
            StatusLineSectionA             = { fg = palette.text, bg = palette.overlay, },
            StatusLineSectionAInactive     = { fg = palette.subtle, bg = palette.overlay, },
            StatusLineSectionB             = { fg = palette.text, bg = palette.surface, },
            StatusLineSectionBInactive     = { fg = palette.subtle, bg = palette.surface, },
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
            diffIndexLine = { fg = palette.pink, },
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
