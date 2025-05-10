-- GUIZHONG.NVIM by Alyx Shang.
-- Licensed under the FSL v1.

-- Importing the function
-- for setting the highlight
-- groups for the builtin
-- LSP.
local lsp = require("guizhong/lsp")

-- Importing the function
-- for setting the highlight
-- groups for the builtin
-- GUI elements.
local gui = require("guizhong/gui")

-- Importing the function
-- for setting the highlight
-- groups for "Noice" elements.
local noice = require("guizhong/noice")

-- Importing the function
-- for setting the highlight
-- groups for the builtin
-- syntax-highlighting groups.
local syntax = require("guizhong/syntax")

-- Importing the function
-- for setting the highlight
-- groups for "NvimTree"
-- elements.
local nvimTree = require("guizhong/nvimtree")

-- Importing the functions
-- for setting the highlight
-- groups for "BufferLines"
-- elements.
local bufferlines = require("guizhong/buffers")

-- Importing the function
-- for setting the highlight
-- groups for "Telescope"
-- elements.
local telescope = require("guizhong/telescope")

-- Importing the function
-- for setting the highlight
-- groups for "TreeSitter"
-- elements.
local treesitter = require("guizhong/treesitter")

-- A function to call all imported
-- functions and set the different
-- highlight groups using the 
-- supplied color palette.
function setHighlights(palette)
  noice.setNoiceGroups(palette)
  lsp.setBuiltinLSPGroups(palette)
  gui.setBuiltinGUIGroups(palette)
  nvimTree.setNvimTreeGroups(palette)
  telescope.setTelescopeGroups(palette)
  syntax.setBuiltinSyntaxGroups(palette)
  treesitter.setTreeSitterGroups(palette)
  if palette.transparent then
    bufferlines.setBufferLinesGroupsTransparent(palette)
  else
    bufferlines.setBufferLinesGroups(palette)
  end
end

-- Exporting the function to
-- set all important highlight
-- groups.
return {
  setHighlights = setHighlights
}
