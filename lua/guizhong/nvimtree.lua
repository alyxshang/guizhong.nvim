-- GUIZHONG.NVIM by Alyx Shang.
-- Licensed under the FSL v1.

-- The function for setting the
-- highlight groups for all "NvimTree"
-- elements.
function setNvimTreeGroups(palette)
 vim.api.nvim_set_hl(
    0, 
    'NvimTreeNormal', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    'NvimTreeFolderIcon', 
    { fg = palette.fg })
end

-- Exporting the function for
-- setting the highlight groups
-- for "NvimTree" elements.
return {
  setNvimTreeGroups = setNvimTreeGroups
}
