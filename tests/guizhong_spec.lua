-- Guizhong.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Importing the function to set
-- highlight groups for the 
-- builtin GUI highlight
-- groups.
local gui = require("guizhong/gui")

-- Importing the function to set
-- highlight groups for the 
-- builtin LSP highlight
-- groups.
local lsp = require("guizhong/lsp")

-- Importing the function to set
-- highlight groups for the 
-- builtin syntax highlight
-- groups.
local syntax = require("guizhong/syntax")

-- A test palette.
local palette = {
    bg = "#10232D",
    fg = "#C7D9BA",
    fg2 = "#B7C8AB",
    fg3 = "#A7B69C",
    fg4 = "#97A58D",
    bg2 = "#23353E",
    bg3 = "#36464F",
    bg4 = "#49585F",
    keywordColor = "#78B69F",
    builtinColor = "#6E866B",
    constColor = "#B9DA9B",
    commentColor = "#FDFDFC",
    funcColor = "#C7D9BA",
    strColor = "#D9FDFE",
    typeColor = "#78E1A0",
    varColor = "#7DB9A4",
    warningColor = "#BDDF9D",
    warning2Color = "#BDDF9D",
    transparent = transparentSetting 
}

-- Defining the "plenary.nvim"
-- tests.
describe(
  "Testing \"guizhong.nvim\".",
  function()
    it(
      "Testing the application of the palette to the syntax groups.",
      function()
        syntax.setBuiltinSyntaxGroups(palette)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'Comment' }).fg) == palette.commentColor)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'Constant' }).fg) == palette.constColor)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'String' }).fg) == palette.strColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Boolean' }).fg) == palette.constColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Float' }).fg) == palette.constColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Identifier' }).fg) == palette.typeColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Function' }).fg) == palette.strColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Character' }).fg) == palette.constColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Statement' }).fg) == palette.keywordColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Repeat' }).fg) == palette.keywordColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Conditional' }).fg) == palette.keywordColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Label' }).fg) == palette.varColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Operator' }).fg) == palette.keywordColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Keyword' }).fg) == palette.keywordColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'PreProc' }).fg) == palette.keywordColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Include' }).fg) == palette.constColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Define' }).fg) == palette.keywordColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Macro' }).fg) == palette.keywordColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'PreCondit' }).fg) == palette.keywordColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Type' }).fg) == palette.typeColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'StorageClass' }).fg) == palette.typeColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Structure' }).fg) == palette.typeColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Typedef' }).fg) == palette.typeColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Special' }).fg) == palette.fg)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'SpecialChar' }).fg) == palette.fg)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Tag' }).fg) == palette.keywordColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Delimiter' }).fg) == palette.typeColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'SpecialComment' }).fg) == palette.typeColor)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Debug' }).fg) == palette.fg)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Underlined' }).fg) == palette.fg2)
        assert.is_true(string.format("#%06X",vim.api.nvim_get_hl(0, { name = 'Error' }).fg) == palette.warningColor)
      end
    )
    it(
      "Testing the application of the palette to the GUI groups.",
      function()
        gui.setBuiltinGUIGroups(palette)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'Normal' }).fg) == palette.fg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'TabLineFill' }).bg) == palette.bg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'NormalNC' }).fg) == palette.fg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'EndOfBuffer' }).fg) == palette.bg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'VertSplit' }).fg) == palette.fg3)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'LineNr' }).fg) == palette.fg2)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'LineNrAbove' }).fg) == palette.fg2)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'LineNrBelow' }).fg) == palette.fg2)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'SignColumn' }).fg) == palette.commentColor)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'FoldColumn' }).fg) == palette.commentColor)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'ColorColumn' }).bg) == palette.bg2)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'Conceal' }).bg) == palette.bg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'Cursor' }).fg) == palette.fg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'CurSearch' }).fg) == palette.fg2)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'CursorColumn' }).bg) == palette.bg2)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'CursorLine' }).bg) == palette.bg2)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'Directory' }).fg) == palette.constColor)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'DiffAdd' }).fg) == palette.keywordColor)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'DiffDelete' }).bg) == palette.bg2)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'DiffChange' }).fg) == palette.keywordColor)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'DiffText' }).fg) == palette.typeColor)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'ErrorMsg' }).fg) == palette.warningColor)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'Folded' }).fg) == palette.fg4)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'IncSearch' }).fg) == palette.bg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'Substitute' }).fg) == palette.bg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'CursorLineNr' }).fg) == palette.strColor)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'ModeMsg' }).fg) == palette.fg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'MsgArea' }).fg) == palette.fg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'MsgSeparator' }).fg) == palette.fg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'MoreMsg' }).fg) == palette.fg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'NormalFloat' }).bg) == palette.bg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'FloatBorder' }).fg) == palette.fg2)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'FloatTitle' }).fg) == palette.fg2)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'Pmenu' }).fg) == palette.fg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'PmenuSel' }).fg) == palette.fg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'Question' }).fg) == palette.fg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'QuickFixLine' }).fg) == palette.fg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'Search' }).fg) == palette.fg2)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'SpellBad' }).fg) == palette.warning2Color)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'SpellCap' }).fg) == palette.warning2Color)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'SpellLocal' }).fg) == palette.warning2Color)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'SpellRare' }).fg) == palette.warning2Color)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'StatusLine' }).bg) == palette.bg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'Title' }).fg) == palette.fg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'Visual' }).fg) == palette.fg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'VisualNOS' }).fg) == palette.fg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'WarningMsg' }).fg) == palette.warning2Color)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'Nvimseparator' }).fg) == palette.fg)
      end
    )
    it(
      "Testing the application of the palette to the LSP groups.",
      function()
        lsp.setBuiltinLSPGroups(palette)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'DiagnosticError' }).fg) == palette.warning2Color)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'DiagnosticWarn' }).fg) == palette.warningColor)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'DiagnosticInfo' }).fg) == palette.fg2)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'DiagnosticHint' }).fg) == palette.fg3)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'DiagnosticOk' }).fg) == palette.fg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'DiagnosticTextError' }).fg) == palette.warning2Color)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'DiagnosticTextWarn' }).fg) == palette.warningColor)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'DiagnosticTextInfo' }).fg) == palette.fg2)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'DiagnosticTextHint' }).fg) == palette.fg3)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'DiagnosticTextOk' }).fg) == palette.fg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'DiagnosticUnderlineError' }).fg) == palette.warning2Color)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'DiagnosticUnderlineWarn' }).fg) == palette.warningColor)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'DiagnosticUnderlineInfo' }).fg) == palette.fg2)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'DiagnosticUnderlineHint' }).fg) == palette.fg3)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'DiagnosticUnderlineOk' }).fg) == palette.fg)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'Added' }).fg) == palette.fg2)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'Changed' }).fg) == palette.fg3)
        assert.is_true(string.format("#%06X", vim.api.nvim_get_hl(0, { name = 'Removed' }).fg) == palette.fg4)
      end
    )
  end
) 
