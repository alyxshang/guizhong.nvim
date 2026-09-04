-- GUIZHONG.NVIM by Alyx Shang.
-- Licensed under the FSL v1.

-- The function for setting the
-- highlight groups for all "GitSigns"
-- elements.
function setGitSignsGroups(palette)
  if palette.transparent then
    vim.api.nvim_set_hl(
      0, 
      'GitSignsAdd', 
      { fg = palette.fg2 })
    vim.api.nvim_set_hl(
      0, 
      'GitSignsChange', 
      { fg = palette.fg2 })
    vim.api.nvim_set_hl(
      0, 
      'GitSignsChangedelete', 
      { fg = palette.fg2 })
    vim.api.nvim_set_hl(
      0, 
      'GitSignsDelete', 
      { fg = palette.fg2 })
    vim.api.nvim_set_hl(
      0, 
      'Added', 
      { fg = palette.fg2 })
    vim.api.nvim_set_hl(
      0, 
      'Changed', 
      { fg = palette.fg2 })
    vim.api.nvim_set_hl(
      0, 
      'Removed', 
      { fg = palette.fg2 })
  else
     vim.api.nvim_set_hl(
      0, 
      'GitSignsAdd', 
      { fg = palette.fg2, bg = palette.bg })
    vim.api.nvim_set_hl(
      0, 
      'GitSignsChange', 
      { fg = palette.fg2, bg = palette.bg })
    vim.api.nvim_set_hl(
      0, 
      'GitSignsChangedelete', 
      { fg = palette.fg2, bg = palette.bg })
    vim.api.nvim_set_hl(
      0, 
      'GitSignsDelete', 
      { fg = palette.fg2, bg = palette.bg })
    vim.api.nvim_set_hl(
      0, 
      'Added', 
      { fg = palette.fg2, bg = palette.bg })
    vim.api.nvim_set_hl(
      0, 
      'Changed', 
      { fg = palette.fg2, bg = palette.bg })
    vim.api.nvim_set_hl(
      0, 
      'Removed', 
      { fg = palette.fg2, bg = palette.bg })
  end
end

-- Exporting the function
-- for setting highlight groups
-- for the "GitSigns" plugin.
return {
  setGitSignsGroups = setGitSignsGroups
}
