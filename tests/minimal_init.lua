-- Guizhong.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- The function to setup a minimal
-- test environment.
local function runner()
  local pkgPath = vim.fn.stdpath("data") .. "/plenary.nvim"
    local gitUrl = "https://github.com/nvim-lua/plenary.nvim"
    vim.loop.spawn(
      "git", {
        args = {
	  "clone", 
	  "--depth=1", 
	  gitUrl,
	  pkgPath
        }
      }
    )
  vim.opt.rtp:append(pkgPath)
end

-- Running the setup
-- function.
runner()
