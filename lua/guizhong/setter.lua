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
-- groups for the builtin
-- syntax-highlighting groups.
local syntax = require("guizhong/syntax")

-- A function to call all imported
-- functions and set the different
-- highlight groups using the 
-- supplied color palette.
function setHighlights(palette)
  vim.opt.termguicolors = true
  if pcall(require, "noice") then
    
    -- Importing the function
    -- for setting the highlight
    -- groups for "Noice" elements.
    local noice = require("guizhong/noice")
    noice.setNoiceGroups(palette)

  end

  if pcall(require, "nvim-tree") then
    
    -- Importing the function
    -- for setting the highlight
    -- groups for "NvimTree"
    -- elements.
    local nvimTree = require("guizhong/nvimtree")
    nvimTree.setNvimTreeGroups(palette)

  end

  if pcall(require, "telescope") then
    
    -- Importing the function
    -- for setting the highlight
    -- groups for "Telescope"
    -- elements.
    local telescope = require("guizhong/telescope")
    telescope.setTelescopeGroups(palette)

  end

  if pcall(require, "treesitter") then
    
    -- Importing the function
    -- for setting the highlight
    -- groups for "TreeSitter"
    -- elements.
    local treesitter = require("guizhong/treesitter")
    treesitter.setTreeSitterGroups(palette)

  end

  if pcall(require, "gitsigns") then

    -- Importing the functions
    -- for setting the highlight
    -- groups for "Gitsigns"
    -- elements.
    local gitsigns = require("guizhong/git")
    gitsigns.setGitSignsGroups(palette)

  end

  if pcall(require, "bufferline") then
    
    -- Importing the functions
    -- for setting the highlight
    -- groups for "BufferLines"
    -- elements.
    local bufferlines = require("guizhong/buffers")

    if palette.transparent then
      bufferlines.setBufferLinesGroupsTransparent(palette)
    else
      bufferlines.setBufferLinesGroups(palette)
    end

  end

  lsp.setBuiltinLSPGroups(palette)
  gui.setBuiltinGUIGroups(palette)
  syntax.setBuiltinSyntaxGroups(palette)end

-- Exporting the function to
-- set all important highlight
-- groups.
return {
  setHighlights = setHighlights
}
