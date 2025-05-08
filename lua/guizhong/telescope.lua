-- GUIZHONG.NVIM by Alyx Shang.
-- Licensed under the FSL v1.

-- The function to set the different
-- highlight groups for "Telescope"
-- elements.
function setTelescopeGroups(palette)
  vim.api.nvim_set_hl(
    0,
    'TelescopeSelection',
    { bg = palette.bg2 })
  vim.api.nvim_set_hl(
    0,
    'TelescopeTitle',
    { fg = palette.fg, bold = true })
  vim.api.nvim_set_hl(
    0,
    'TelescopeMatching',
    { fg = palette.fg, })
end

-- Exporting the function
-- to set the highlight groups
-- for "Telescope" elements.
return {
  setTelescopeGroups = setTelescopeGroups
}
