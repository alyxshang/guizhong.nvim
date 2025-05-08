-- GUIZHONG.NVIM by Alyx Shang.
-- Licensed under the FSL v1.

-- The function for setting the
-- highlight groups for all "Noice"
-- elements.
function setNoiceGroups(palette)
  vim.api.nvim_set_hl(
    0, 
    'Noice', 
    { fg = palette.fg, bg = palette.bg })
  vim.api.nvim_set_hl(
    0, 
    'NoiceCmdline', 
    { fg = palette.fg, bg = palette.bg })
  vim.api.nvim_set_hl(
    0, 
    'NoiceCmdlinePopup', 
    { fg = palette.fg, bg = palette.bg })
  vim.api.nvim_set_hl(
    0, 
    'NoiceCmdlinePopupBorder', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    'NoicePopup', 
    { fg = palette.fg, bg = palette.bg })
  vim.api.nvim_set_hl(
    0,
    'NoicePopupBorder', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    'NoiceNotification', 
    { fg = palette.fg, bg = palette.bg })
  vim.api.nvim_set_hl(
    0, 
    'NoiceError', 
    { fg = palette.warningColor })
  vim.api.nvim_set_hl(
    0, 
    'NoiceInfo', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    'NoiceWarn',
    { fg = palette.warning2Color })
  vim.api.nvim_set_hl(
    0, 
    'NoiceSearch', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    'NoiceConfirm', 
    { fg = palette.fg })
end

-- Exporting the function
-- to set the most important
-- highlight groups for
-- "Noice" elements.
return {
  setNoiceGroups = setNoiceGroups
}
