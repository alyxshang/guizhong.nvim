-- GUIZHONG.NVIM by Alyx Shang.
-- Licensed under the FSL v1.

-- Setting the highlight
-- groups for builtin LSP
-- elements.
function setBuiltinLSPGroups(palette)
  vim.api.nvim_set_hl(
    0, 
    'DiagnosticError', 
    { fg = palette.warning2Color })
  vim.api.nvim_set_hl(
    0, 
    'DiagnosticWarn', 
    { fg = palette.warningColor })
  vim.api.nvim_set_hl(
    0, 
    'DiagnosticInfo', 
    { fg = palette.fg2 })
  vim.api.nvim_set_hl(
    0, 
    'DiagnosticHint', 
    { fg = palette.fg3 })
  vim.api.nvim_set_hl(
    0, 
    'DiagnosticOk', 
    { fg = palette.fg })

  vim.api.nvim_set_hl(
    0, 
    'DiagnosticTextError', 
    { fg = palette.warning2Color, bold = true })
  vim.api.nvim_set_hl(
    0, 
    'DiagnosticTextWarn', 
    { fg = palette.warningColor, bold = true })
  vim.api.nvim_set_hl(
    0, 
    'DiagnosticTextInfo', 
    { fg = palette.fg2, bold = true })
  vim.api.nvim_set_hl(
    0, 
    'DiagnosticTextHint', 
    { fg = palette.fg3, bold = true })
  vim.api.nvim_set_hl(
    0, 
    'DiagnosticTextOk', 
    { fg = palette.fg, bold = true })
  vim.api.nvim_set_hl(
    0, 
    'DiagnosticUnderlineError', 
    { fg = palette.warning2Color, undercurl = true })
  vim.api.nvim_set_hl(
    0, 
    'DiagnosticUnderlineWarn', 
    { fg = palette.warningColor, undercurl = true })
  vim.api.nvim_set_hl(
    0, 
    'DiagnosticUnderlineInfo', 
    { fg = palette.fg2, undercurl = true })
  vim.api.nvim_set_hl(
    0, 
    'DiagnosticUnderlineHint', 
    { fg = palette.fg3, undercurl = true })
  vim.api.nvim_set_hl(
    0, 
    'DiagnosticUnderlineOk', 
    { fg = palette.fg, undercurl = true })
  vim.api.nvim_set_hl(
    0,
    'Added',
    { fg = palette.fg2 })
  vim.api.nvim_set_hl(
    0,
    'Changed',
    { fg = palette.fg3 })
  vim.api.nvim_set_hl(
    0,
    'Removed',
    { fg = palette.fg4 })
end

-- Exporting the function
-- for setting highlight groups
-- for the builtin LSP.
return {
  setBuiltinLSPGroups = setBuiltinLSPGroups
}
