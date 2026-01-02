local lush = require("lush")
local hsl = lush.hsl

-- Color palette
local colors = {
  bg         = hsl("#020221"),
  bg_alt     = hsl("#06062F"),
  fg         = hsl("#E6E9F2"),
  fg_dim     = hsl("#A9AECF"),

  blue       = hsl("#475A84"),
  yellow     = hsl("#FFD788"),
  orange     = hsl("#FF9752"),
  red        = hsl("#FF6B6B"),
  green      = hsl("#7ED7A5"),
  cyan       = hsl("#6ED6E0"),
  purple     = hsl("#B39DDB"),
  pink       = hsl("#FF8FB1"),

  border     = hsl("#2B335C"),
  cursor     = hsl("#FFB86C"),

  error      = hsl("#FF5F5F"),
  warning    = hsl("#FFD166"),
  info       = hsl("#6ECFFF"),
  hint       = hsl("#8BE9B4"),

  git_add    = hsl("#6BDFA8"),
  git_change = hsl("#FFB86C"),
  git_delete = hsl("#FF6E6E"),
}

---@diagnostic disable: undefined-global
return lush(function()
  return {

    -- Core UI

    Normal { fg = colors.fg, bg = colors.bg },
    NormalNC { Normal },
    NormalFloat { fg = colors.fg, bg = colors.bg_alt },

    Cursor { fg = colors.bg, bg = colors.cursor },
    CursorLine { bg = colors.bg_alt },
    CursorColumn { CursorLine },

    LineNr { fg = colors.fg_dim },
    CursorLineNr { fg = colors.yellow, bold = true },

    SignColumn { bg = colors.bg },
    Folded { fg = colors.fg_dim, bg = colors.bg_alt },
    FoldColumn { fg = colors.blue },

    VertSplit { fg = colors.border },
    WinSeparator { fg = colors.border },

    Visual { bg = colors.blue.darken(20) },
    Search { fg = colors.bg, bg = colors.yellow },
    IncSearch { fg = colors.bg, bg = colors.orange },

    StatusLine { fg = colors.fg, bg = colors.bg_alt },
    StatusLineNC { fg = colors.fg_dim, bg = colors.bg_alt },

    Pmenu { fg = colors.fg, bg = colors.bg_alt },
    PmenuSel { fg = colors.bg, bg = colors.blue },
    PmenuSbar { bg = colors.border },
    PmenuThumb { bg = colors.blue },

    MatchParen { fg = colors.orange, bold = true },

    -- Syntax (Vim)

    Comment { fg = colors.blue, italic = true },

    Constant { fg = colors.purple },
    String { fg = colors.fg },
    Character { fg = colors.fg },
    Number { fg = colors.purple },
    Boolean { fg = colors.orange },
    Float { Number },

    Identifier { fg = colors.fg_dim },
    Function { fg = colors.fg_dim },

    Statement { fg = colors.yellow },
    Conditional { Statement },
    Repeat { Statement },
    Label { Statement },
    Operator { fg = colors.fg },
    Keyword { fg = colors.yellow },
    Exception { Statement },

    PreProc { fg = colors.yellow },
    Include { PreProc },
    Define { PreProc },
    Macro { PreProc },
    PreCondit { PreProc },

    Type { fg = colors.blue },
    StorageClass { Type },
    Structure { Type },
    Typedef { Type },

    Special { fg = colors.cyan },
    SpecialChar { Special },
    Tag { fg = colors.orange },
    Delimiter { fg = colors.fg },
    SpecialComment { Comment },

    Error { fg = colors.error },
    Todo { fg = colors.yellow, bold = true },

    -- LSP Diagnostics

    DiagnosticError { fg = colors.error },
    DiagnosticWarn { fg = colors.warning },
    DiagnosticInfo { fg = colors.info },
    DiagnosticHint { fg = colors.hint },

    DiagnosticUnderlineError { sp = colors.error, undercurl = true },
    DiagnosticUnderlineWarn { sp = colors.warning, undercurl = true },
    DiagnosticUnderlineInfo { sp = colors.info, undercurl = true },
    DiagnosticUnderlineHint { sp = colors.hint, undercurl = true },


    -- Git (gitsigns)

    GitSignsAdd { fg = colors.git_add },
    GitSignsChange { fg = colors.git_change },
    GitSignsDelete { fg = colors.git_delete },


    -- Telescope

    TelescopeNormal { fg = colors.fg, bg = colors.bg_alt },
    TelescopeBorder { fg = colors.border },
    TelescopeSelection { bg = colors.blue.darken(20) },
    TelescopeMatching { fg = colors.orange, bold = true },

  }
end)
