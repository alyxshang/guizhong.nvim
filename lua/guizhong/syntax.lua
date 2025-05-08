-- GUIZHONG.NVIM by Alyx Shang.
-- Licensed under the FSL v1.

-- Setting the highlight
-- groups for builtin
-- syntax-highlighting.
function setBuiltinSyntaxGroups(palette)
  vim.api.nvim_set_hl(
    0, 
    'Comment', 
    { fg = palette.commentColor })  
  vim.api.nvim_set_hl(
    0, 
    'Constant', 
    { fg = palette.constColor })
  vim.api.nvim_set_hl(
    0, 
    'String', 
    { fg = palette.strColor })
  vim.api.nvim_set_hl(
    0, 
    'Number', 
    { fg = palette.strColor })
  vim.api.nvim_set_hl(
    0, 
    'Boolean', 
    { fg = palette.constColor })
  vim.api.nvim_set_hl(
    0, 
    'Float', 
    { fg = palette.constColor })
  vim.api.nvim_set_hl(
    0, 
    'Identifier', 
    { fg = palette.typeColor })
  vim.api.nvim_set_hl(
    0, 
    'Function', 
    { fg = palette.strColor })
  vim.api.nvim_set_hl(
    0, 
    'Character', 
    { fg = palette.constColor })
  vim.api.nvim_set_hl(
    0, 
    'Statement', 
    { fg = palette.keywordColor })
  vim.api.nvim_set_hl(
    0, 
    'Repeat', 
    { fg = palette.keywordColor })
  vim.api.nvim_set_hl(
    0, 
    'Conditional', 
    { fg = palette.keywordColor })
  vim.api.nvim_set_hl(
    0, 
    'Label', 
    { fg = palette.varColor })
  vim.api.nvim_set_hl(
    0, 
    'Operator', 
    { fg = palette.keywordColor })
  vim.api.nvim_set_hl(
    0, 
    'Keyword', 
    { fg=palette.keywordColor, bold = true })
  vim.api.nvim_set_hl(
    0, 
    'Keyword', 
    { fg = palette.keywordColor, bold = true })
  vim.api.nvim_set_hl(
    0, 
    'PreProc', 
    { fg = palette.keywordColor })
  vim.api.nvim_set_hl(
    0, 
    'Include', 
    { fg = palette.constColor })
  vim.api.nvim_set_hl(
    0, 
    'Define', 
    { fg = palette.keywordColor })
  vim.api.nvim_set_hl(
    0, 
    'Macro', 
    { fg = palette.keywordColor })
  vim.api.nvim_set_hl(
    0, 
    'PreCondit', 
    { fg = palette.keywordColor })
  vim.api.nvim_set_hl(
    0, 
    'Type', 
    { fg = palette.typeColor })
  vim.api.nvim_set_hl(
    0, 
    'StorageClass', 
    { fg = palette.typeColor, italic=true })
  vim.api.nvim_set_hl(
    0, 
    'Structure', 
    { fg = palette.typeColor })
  vim.api.nvim_set_hl(
    0, 
    'Typedef', 
    { fg = palette.typeColor })
  vim.api.nvim_set_hl(
    0, 
    'Special', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    'SpecialChar', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    'Tag', 
    { fg = palette.keywordColor })
  vim.api.nvim_set_hl(
    0, 
    'Delimiter', 
    { fg = palette.typeColor, italic = true})
  vim.api.nvim_set_hl(
    0, 
    'SpecialComment', 
    { fg = palette.typeColor, italic = true})
  vim.api.nvim_set_hl(
    0, 
    'Debug', 
    { fg = palette.fg })
  vim.api.nvim_set_hl(
    0, 
    'Underlined', 
    { fg = palette.fg2, underline = true })
  vim.api.nvim_set_hl(
    0, 
    'Error', 
    { fg = palette.warningColor, underline = true })
end

-- Exporting the function
-- to set highlight groups
-- for the builtin syntax-highlighting
-- groups.
return {
  setBuiltinSyntaxGroups = setBuiltinSyntaxGroups
}
