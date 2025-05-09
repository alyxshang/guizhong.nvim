-- GUIZHONG.NVIM by Alyx Shang.
-- Licensed under the FSL v1.

-- The function
-- for setting the highlight
-- groups for "BufferLines"
-- elements with a background
-- color.
function setBufferLinesGroups(palette)
  vim.api.nvim_set_hl(
    0, 
    'BufferLineBackground', 
    { bg = palette.bg })
  vim.api.nvim_set_hl(
    0, 
    'BufferLine', 
    { fg = palette.fg, bg = palette.bg })
  vim.api.nvim_set_hl(
    0, 
    'BufferLineBufferSelected',
    { fg = palette.fg, bg = palette.bg, bold = true })
  vim.api.nvim_set_hl(
    0, 
    'BufferLineBufferVisible', 
    { fg = palette.fg, bg = palette.bg })
  vim.api.nvim_set_hl(
    0, 
    'BufferLineTab', 
    { fg = palette.fg, bg = palette.bg })
  vim.api.nvim_set_hl(
    0,
    'BufferLineTabSelected', 
    { fg = palette.fg, bg = palette.bg, bold = true })
  vim.api.nvim_set_hl(
    0,
    'BufferLineTabClose', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    'BufferLineSeparator', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    'BufferLineSeparatorVisible', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    'BufferLineSeparatorSelected', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    'BufferLineIndicatorSelected', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0,
    'BufferLineModified', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    'BufferLineModifiedSelected', 
    { fg = palette.fg, bg = palette.bg })
end

-- The function
-- for setting the highlight
-- groups for "BufferLines"
-- elements without a background
-- color.
function setBufferLinesGroupsTransparent(palette)
  vim.api.nvim_set_hl(
    0, 
    'BufferLineBackground', 
    { bg = 'NONE' })
  vim.api.nvim_set_hl(
    0, 
    'BufferLine', 
    { fg = palette.fg, bg = 'NONE' })
  vim.api.nvim_set_hl(
    0, 
    'BufferLineBufferSelected',
    { fg = palette.fg, bg = 'NONE', bold = true })
  vim.api.nvim_set_hl(
    0, 
    'BufferLineBufferVisible', 
    { fg = palette.fg, bg = 'NONE' })
  vim.api.nvim_set_hl(
    0, 
    'BufferLineTab', 
    { fg = palette.fg, bg = 'NONE' })
  vim.api.nvim_set_hl(
    0,
    'BufferLineTabSelected', 
    { fg = palette.fg, bg = 'NONE', bold = true })
  vim.api.nvim_set_hl(
    0,
    'BufferLineTabClose', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    'BufferLineSeparator', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    'BufferLineSeparatorVisible', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    'BufferLineSeparatorSelected', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    'BufferLineIndicatorSelected', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0,
    'BufferLineModified', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    'BufferLineModifiedSelected', 
    { fg = palette.fg, bg = 'NONE' })
end


-- Exporting the function
-- for setting the highlight
-- groups for "BufferLines"
-- elements.
return {
  setBufferLinesGroups = setBufferLinesGroups
  setBufferLinesGroupsTransparent = setBufferLinesGroupsTransparent
}
