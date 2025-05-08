-- GUIZHONG.NVIM by Alyx Shang.
-- Licensed under the FSL v1.

-- Setting the highlight
-- groups for "TreeSitter"
-- elements.
function setTreeSitterGroups(palette)
  vim.api.nvim_set_hl(
    0, 
    '@comment', 
    { fg = palette.commentColor })  
  vim.api.nvim_set_hl(
    0, 
    '@constant', 
    { fg = palette.constColor })
  vim.api.nvim_set_hl(
    0, 
    '@constant.builtin', 
    { fg = palette.constColor })
  vim.api.nvim_set_hl(
    0, 
    '@string', 
    { fg = palette.strColor })
  vim.api.nvim_set_hl(
    0, 
    '@string.escape', 
    { fg = palette.strColor })
  vim.api.nvim_set_hl(
    0, 
    '@string.special', 
    { fg = palette.strColor })
  vim.api.nvim_set_hl(
    0, 
    '@character', 
    { fg = palette.constColor })
  vim.api.nvim_set_hl(
    0, 
    '@character.special', 
    { fg = palette.constColor })
  vim.api.nvim_set_hl(
    0, 
    '@number', 
    { fg = palette.strColor })
  vim.api.nvim_set_hl(
    0, 
    '@boolean', 
    { fg = palette.constColor })
  vim.api.nvim_set_hl(
    0, 
    '@float', 
    { fg = palette.constColor })
  vim.api.nvim_set_hl(
    0, 
    '@function', 
    { fg = palette.strColor })
  vim.api.nvim_set_hl(
    0, 
    '@function.builtin', 
    { fg = palette.strColor })
  vim.api.nvim_set_hl(
    0, 
    '@function.macro', 
    { fg = palette.strColor })
  vim.api.nvim_set_hl(
    0, 
    '@parameter', 
    { fg = palette.strColor })
  vim.api.nvim_set_hl(
    0, 
    '@method', 
    { fg = palette.strColor })
  vim.api.nvim_set_hl(
    0, 
    '@field', 
    { fg = palette.varColor })
  vim.api.nvim_set_hl(
    0, 
    '@property', 
    { fg = palette.varColor })
  vim.api.nvim_set_hl(
    0, 
    '@constructor', 
    { fg = palette.strColor })
  vim.api.nvim_set_hl(
    0, 
    '@conditional', 
    { fg = palette.keywordColor })
  vim.api.nvim_set_hl(
    0, 
    '@repeat', 
    { fg = palette.keywordColor })
  vim.api.nvim_set_hl(
    0, 
    '@label', 
    { fg = palette.varColor })
  vim.api.nvim_set_hl(
    0, 
    '@operator', 
    { fg = palette.keywordColor })
  vim.api.nvim_set_hl(
    0, 
    '@keyword', 
    { fg=palette.keywordColor, bold = true })
  vim.api.nvim_set_hl(
    0, 
    '@keyword', 
    { fg=palette.keywordColor, bold = true })
  vim.api.nvim_set_hl(
    0, 
    '@exception', 
    { fg = palette.warningColor, underline = true })
  vim.api.nvim_set_hl(
    0, 
    '@variable', 
    { fg = palette.varColor })
  vim.api.nvim_set_hl(
    0, 
    '@type', 
    { fg = palette.typeColor })
  vim.api.nvim_set_hl(
    0, 
    '@type.definition', 
    { fg = palette.typeColor })
  vim.api.nvim_set_hl(
    0, 
    '@structure', 
    { fg = palette.typeColor })
  vim.api.nvim_set_hl(
    0, 
    '@include', 
    { fg = palette.constColor })
  vim.api.nvim_set_hl(
    0, 
    '@preproc', 
    { fg = palette.keywordColor })
  vim.api.nvim_set_hl(
    0, 
    '@debug', 
    { fg = palette.fg }) 
end

-- Exporting the function
-- to set highlight groups
-- for "TreeSitter" elements.
return {
  setTreeSitterGroups = setTreeSitterGroups
}
