-- Modest Darker — Neovim colorscheme
vim.g.colors_name = "modest_darker"
vim.o.background = "dark"

local base = "#0b0b0b"
local text = "#99A0A6"
local comment = "#444444"
local keyword = "#ca72e4"
local func = "#5ab0f6"
local type = "#e3b868"
local string = "#97ca72"
local number = "#d99a5e"
local operator = "#56b6c2"
local variable = "#848d9c"
local accent = "#ca72e4"
local border = "#333333"
local error = "#ff616e"
local warning = "#e3b868"
local created = "#8bd152"
local deleted = "#ff616e"

local hl = vim.api.nvim_set_hl
local function set(group, spec) hl(0, group, spec) end

set("Normal", { fg = text, bg = base })
set("NormalFloat", { fg = text, bg = base })
set("FloatBorder", { fg = border, bg = base })
set("WinSeparator", { fg = base })
set("Folded", { fg = comment, bg = base })
set("VertSplit", { fg = base })
set("Cursor", { fg = base, bg = accent })
set("lCursor", { fg = base, bg = accent })
set("CursorLine", { bg = "#080808" })
set("CursorLineNr", { fg = accent })
set("LineNr", { fg = "#3f3f3f" })
set("Visual", { bg = "#3d2744" })
set("IncSearch", { fg = base, bg = accent })
set("Search", { bg = "#3d2744" })
set("MatchParen", { fg = accent, bold = true })
set("Comment", { fg = comment, italic = true })
set("Todo", { fg = warning, bold = true })
set("Constant", { fg = number })
set("String", { fg = string })
set("Character", { fg = number })
set("Number", { fg = number })
set("Boolean", { fg = number })
set("Float", { fg = number })
set("Identifier", { fg = variable })
set("Function", { fg = func, italic = true, bold = true })
set("Statement", { fg = keyword, italic = true, bold = true })
set("Conditional", { fg = keyword, italic = true, bold = true })
set("Repeat", { fg = keyword, italic = true, bold = true })
set("Label", { fg = keyword, bold = true })
set("Operator", { fg = operator })
set("Keyword", { fg = keyword, italic = true, bold = true })
set("Exception", { fg = keyword, bold = true })
set("PreProc", { fg = keyword })
set("Include", { fg = keyword, italic = true })
set("Define", { fg = keyword })
set("Macro", { fg = func })
set("PreCondit", { fg = keyword })
set("Type", { fg = type, bold = true })
set("StorageClass", { fg = keyword, italic = true })
set("Structure", { fg = type, bold = true })
set("Typedef", { fg = type })
set("Special", { fg = number })
set("SpecialChar", { fg = string })
set("Tag", { fg = "#e06c75" })
set("Delimiter", { fg = operator })
set("SpecialComment", { fg = comment, italic = true })
set("Debug", { fg = error })
set("Underlined", { underline = true })
set("Ignore", { fg = "#4d5058" })
set("Error", { fg = error })
set("WarningMsg", { fg = warning })
set("ErrorMsg", { fg = error })
set("MoreMsg", { fg = func })
set("Question", { fg = accent })
set("Title", { fg = func, bold = true })
set("Directory", { fg = func })
set("NonText", { fg = "#4d5058" })
set("EndOfBuffer", { fg = base })
set("Whitespace", { fg = "#4d5058" })
set("StatusLine", { fg = text, bg = base })
set("StatusLineNC", { fg = "#848d9c", bg = base })
set("StatusLineTerm", { fg = text, bg = base })
set("StatusLineTermNC", { fg = "#848d9c", bg = base })
set("TabLine", { fg = "#848d9c", bg = base })
set("TabLineSel", { fg = accent, bg = base })
set("TabLineFill", { fg = base, bg = base })
set("Pmenu", { fg = text, bg = base })
set("PmenuSel", { bg = "#3d2744" })
set("PmenuSbar", { bg = base })
set("PmenuThumb", { bg = "#848d9c" })
set("SpellBad", { undercurl = true, sp = error })
set("SpellCap", { undercurl = true, sp = warning })
set("SpellLocal", { undercurl = true, sp = warning })
set("SpellRare", { undercurl = true, sp = created })
set("DiffAdd", { fg = created, bg = "#3b5135" })
set("DiffDelete", { fg = deleted, bg = "#572a32" })
set("DiffChange", { fg = warning, bg = "#352e20" })
set("DiffText", { fg = text, bg = "#4a4029" })
set("diffAdded", { fg = created })
set("diffRemoved", { fg = deleted })
set("diffChanged", { fg = warning })
set("gitcommitSummary", { fg = func })

-- Terminal colors
for i, c in ipairs({
  "#06060C", "#E95678", "#29D398", "#F29E73",
  "#26BBD9", "#EE64AC", "#29C5C7", "#99A0A6",
  "#141414", "#EC6A88", "#2FC995", "#F5AE8B",
  "#3FC4DE", "#F075B5", "#2AC5C8", "#99A0A6",
}) do
  vim.g["terminal_color_" .. (i - 1)] = c
end

-- Flats/panels: match Zed's pure dark, no raised panels
set("NvimTreeNormal", { fg = text, bg = base })
set("NvimTreeNormalNC", { fg = text, bg = base })
set("NvimTreeWinSeparator", { fg = base, bg = base })
set("NvimTreeEndOfBuffer", { fg = base, bg = base })
set("NvimTreeSignColumn", { bg = base })
set("NvimTreeIndentMarker", { fg = "#333333" })
set("NvimTreeFolderName", { fg = text })
set("NvimTreeRootFolder", { fg = "#a8adb3", bold = true })
set("NvimTreeGitIgnored", { fg = "#4d5058" })
set("NvimTreeGitUntracked", { fg = "#8bd152" })
set("NvimTreeGitModified", { fg = "#deba75" })
set("NvimTreeGitDeleted", { fg = "#ff616e" })
set("NvimTreeGrey", { fg = "#4d5058" })
set("NeoTreeNormal", { fg = text, bg = base })
set("NeoTreeNormalNC", { fg = text, bg = base })
set("NeoTreeFloatNormal", { fg = text, bg = base })
set("NeoTreeFloatBorder", { fg = border, bg = base })
set("NeoTreeWinSeparator", { fg = base, bg = base })
set("NeoTreeBufferNumber", { fg = "#4d5058" })
set("NeoTreeIndentMarker", { fg = "#333333" })
set("NeoTreeGitIgnored", { fg = "#4d5058" })
set("NeoTreeGitModified", { fg = "#deba75" })
set("NeoTreeGitUntracked", { fg = "#8bd152" })
set("NeoTreeGitDeleted", { fg = "#ff616e" })


-- Indent guides (indent-blankline / builtin)
set("IndentGuidesEven", { fg = "#1f1f1f" })
set("IndentGuidesOdd", { fg = "#1f1f1f" })

-- Indent guides (snacks.indent / indent-blankline), comment color


-- Indent guides (snacks.indent): inactive hidden, scope/chunk gold
set("SnacksIndent", { fg = "#0b0b0b" })
set("SnacksIndentScope", { fg = "#deba75" })
set("SnacksIndentChunk", { fg = "#deba75" })
set("IndentBlanklineChar", { fg = "#0b0b0b" })
set("IndentBlanklineContextChar", { fg = "#deba75" })

-- Every remaining surface is the base background (Zed parity: no raised panels)
set("NormalNC", { fg = text, bg = base })
set("WinBar", { fg = text, bg = base })
set("WinBarNC", { fg = "#848d9c", bg = base })
set("MsgArea", { fg = text, bg = base })
set("SignColumn", { bg = base })
set("FoldColumn", { fg = "#4d5058", bg = base })
set("CursorLineSign", { bg = "#080808" })
set("CursorLineFold", { bg = "#080808" })
set("ColorColumn", { bg = "#1f1f1f" })
set("CursorColumn", { bg = "#080808" })
set("Terminal", { fg = text, bg = base })
set("TermCursor", { fg = base, bg = accent })
set("TermCursorNC", { fg = base, bg = "#848d9c" })
set("FloatTitle", { fg = "#848d9c", bg = base })
set("FloatFooter", { fg = "#848d9c", bg = base })
set("QuickFixLine", { bg = "#3d2744" })
set("CurSearch", { fg = base, bg = accent })
set("Substitute", { bg = "#3d2744" })
set("VisualNOS", { bg = "#3d2744" })
set("Added", { fg = created })
set("Removed", { fg = deleted })
set("Changed", { fg = "#deba75" })
set("PmenuKind", { fg = func, bg = base })
set("PmenuExtra", { fg = "#848d9c", bg = base })
set("PmenuMatch", { fg = accent, bg = base })
set("PmenuMatchSel", { fg = accent, bg = "#3d2744" })
set("DiagnosticError", { fg = error })
set("DiagnosticWarn", { fg = warning })
set("DiagnosticInfo", { fg = func })
set("DiagnosticHint", { fg = "#848d9c" })
set("DiagnosticOk", { fg = created })
set("DiagnosticVirtualTextError", { fg = error, bg = base })
set("DiagnosticVirtualTextWarn", { fg = warning, bg = base })
set("DiagnosticVirtualTextInfo", { fg = func, bg = base })
set("DiagnosticVirtualTextHint", { fg = "#848d9c", bg = base })
set("DiagnosticUnderlineError", { undercurl = true, sp = error })
set("DiagnosticUnderlineWarn", { undercurl = true, sp = warning })
set("DiagnosticUnderlineInfo", { undercurl = true, sp = func })
set("DiagnosticUnderlineHint", { undercurl = true, sp = "#848d9c" })
set("LspReferenceText", { bg = "#262626" })
set("LspReferenceRead", { bg = "#262626" })
set("LspReferenceWrite", { bg = "#3d2744" })
set("LspSignatureActiveParameter", { fg = accent, bold = true })
