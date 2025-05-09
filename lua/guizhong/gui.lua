-- GUIZHONG.NVIM by Alyx Shang.
-- Licensed under the FSL v1.

-- Setting the highlight
-- groups for normal
-- GUI elments.
function setBuiltinGUIGroups(palette)

  -- Setting key highlight groups to
  -- support transparency.
  if palette.transparent then
    vim.api.nvim_set_hl(
      0, 
      'Normal', 
      { fg = palette.fg, bg = 'NONE' })
    vim.api.nvim_set_hl(
      0, 
      'NormalNC', 
      { fg = palette.fg, bg = 'NONE' })
    vim.api.nvim_set_hl(
      0,
      'EndOfBuffer',
      { fg = 'NONE' })
    vim.api.nvim_set_hl(
      0, 
      'VertSplit', 
      { fg = palette.fg3, bg = 'NONE' })
    vim.api.nvim_set_hl(
      0, 
      'LineNr', 
      { fg = palette.fg2, bg = 'NONE' })
    vim.api.nvim_set_hl(
      0, 
      'LineNrAbove', 
      { fg = palette.fg2, bg = 'NONE' })
    vim.api.nvim_set_hl(
      0, 
      'LineNrBelow', 
      { fg = palette.fg2, bg = 'NONE' })
    vim.api.nvim_set_hl(
      0, 
      'SignColumn', 
      { fg = palette.commentColor, bg = 'NONE' })
    vim.api.nvim_set_hl(
      0, 
      'FoldColumn',
      { fg = palette.commentColor, bg = 'NONE' })
  else
    vim.api.nvim_set_hl(
      0, 
      'Normal', 
      { fg = palette.fg, bg = palette.bg })
    vim.api.nvim_set_hl(
      0, 
      'NormalNC', 
      { fg = palette.fg, bg = palette.bg })
    vim.api.nvim_set_hl(
      0,
      'EndOfBuffer',
      { fg = palette.bg }) 
    vim.api.nvim_set_hl(
      0, 
      'VertSplit', 
      { fg = palette.fg3, bg = palette.bg3 })
    vim.api.nvim_set_hl(
      0, 
      'LineNr', 
      { fg = palette.fg2, bg = palette.bg })
    vim.api.nvim_set_hl(
      0, 
      'LineNrAbove', 
      { fg = palette.fg2, bg = palette.bg })
    vim.api.nvim_set_hl(
      0, 
      'LineNrBelow', 
      { fg = palette.fg2, bg = palette.bg })  
    vim.api.nvim_set_hl(
      0, 
      'SignColumn', 
      { fg = palette.commentColor, bg = palette.bg2 })
    vim.api.nvim_set_hl(
      0, 
      'FoldColumn',
      { fg = palette.commentColor, bg = palette.bg2 })
    end

  -- Setting the other
  -- highlight groups.
  vim.api.nvim_set_hl(
    0, 
    'ColorColumn',
    { bg = palette.bg2})
  vim.api.nvim_set_hl(
    0, 
    'Conceal', 
    { bg = palette.bg })
  vim.api.nvim_set_hl(
    0, 
    'Cursor', 
    { fg = palette.fg, bg = palette.bg })
  vim.api.nvim_set_hl(
    0, 
    'CurSearch', 
    { fg = palette.fg2, bg = palette.bg2 })
  vim.api.nvim_set_hl(
    0, 
    'CursorColumn',
    { bg = palette.bg2 })
  vim.api.nvim_set_hl(
    0, 
    'CursorLine', 
    { bg = palette.bg2 })
  vim.api.nvim_set_hl(
    0, 
    'Directory',
    { fg = palette.constColor, bold = true })
  vim.api.nvim_set_hl(
    0, 
    'DiffAdd',
    { fg = palette.keywordColor })
  vim.api.nvim_set_hl(
    0, 
    'DiffDelete', 
    { bg = palette.bg2 })
  vim.api.nvim_set_hl(
    0, 
    'DiffChange',
    { fg = palette.keywordColor })
  vim.api.nvim_set_hl(
    0, 
    'DiffText',
    { fg = palette.typeColor })
  vim.api.nvim_set_hl(
    0, 
    'ErrorMsg', 
    { fg = palette.warningColor, bg = palette.bg2, bold=true }) 
  vim.api.nvim_set_hl(
    0, 
    'Folded',
    { fg = palette.fg4, bg = palette.bg })  
  vim.api.nvim_set_hl(
    0, 
    'IncSearch',
    { fg = palette.bg, bg = palette.keywordColor })
  vim.api.nvim_set_hl(
    0, 
    'Substitute',
    { fg = palette.bg, bg = palette.keywordColor })
  vim.api.nvim_set_hl(
    0, 
    'CursorLineNr',
    { fg = palette.strColor, bg = palette.bg })
  vim.api.nvim_set_hl(
    0, 
    'ModeMsg', 
    { fg = palette.fg, bg = palette.bg})
  vim.api.nvim_set_hl(
    0, 
    'MsgArea', 
    { fg = palette.fg, bg = palette.bg})
  vim.api.nvim_set_hl(
    0, 
    'MsgSeparator', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    'MoreMsg', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    "NormalFloat", 
    { bg = palette.bg, fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    "FloatBorder", 
    { fg = palette.fg2 })
  vim.api.nvim_set_hl(
    0, 
    "FloatTitle", 
    { fg = palette.fg2, bold = true }) 
  vim.api.nvim_set_hl(
    0, 
    'Pmenu', 
    { fg = palette.fg, bg = palette.bg })
  vim.api.nvim_set_hl(
    0, 
    'PmenuSel', 
    { fg = palette.fg, bg = palette.bg })
  vim.api.nvim_set_hl(
    0, 
    'Question', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    'QuickFixLine', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    'Search', 
    { fg = palette.fg2, bg = palette.bg2 })
  vim.api.nvim_set_hl(
    0, 
    'SpellBad', 
    { fg = palette.warning2Color, undercurl = true })
  vim.api.nvim_set_hl(
    0, 
    'SpellCap', 
    { fg = palette.warning2Color, undercurl = true })
  vim.api.nvim_set_hl(
    0, 
    'SpellLocal', 
    { fg = palette.warning2Color, undercurl = true })
  vim.api.nvim_set_hl(
    0, 
    'SpellRare', 
    { fg = palette.warning2Color, undercurl = true })
  vim.api.nvim_set_hl(
    0, 
    'StatusLine', 
    { bg = palette.bg })
  vim.api.nvim_set_hl(
    0, 
    'Title', 
    { fg = palette.fg, bold = true })
  vim.api.nvim_set_hl(
    0, 
    'Visual', 
    { fg = palette.fg, bg = palette.bg })
  vim.api.nvim_set_hl(
    0, 
    'VisualNOS', 
    { fg = palette.fg, bg = palette.bg })
  vim.api.nvim_set_hl(
    0, 
    'WarningMsg', 
    { fg = palette.warning2Color, bg = palette.bg })
  vim.api.nvim_set_hl(
    0, 
    'Nvimseparator', 
    { fg = palette.fg })
end

-- Exporting the
-- "setBuiltinGUIGroups"
-- function.
return {
  setBuiltinGUIGroups = setBuiltinGUIGroups
}
