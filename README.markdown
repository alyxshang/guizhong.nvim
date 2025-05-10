# GUIZHONG.NVIM :nail_care: :woman_technologist:

***A framework for creating Neovim colorschemes. :nail_care: :woman_technologist:***

## CHARACTER LORE :rock:

> There once was an archon. Skilled in the arts of creation, she created much joy for the humans whose care she had been charged with.
> These joys were created through the invention of ingenious devices. 

\- ***Records of Liyue historians***

> Teach with wisdom, be bound by virtue, fortify the bones, unite in ambition.

\- ***Guizhong, Goddess of earthen elements***

## ABOUT :books:

This repository contains the source code for a Lua plugin for Neovim enabling users to build a beautiful Neovim colorscheme in mere minutes.
The project was named after the goddess of invention in Genshin Impact, ***Guizhong*** (归终).

## INSTALLATION :inbox_tray:

### Lazy.nvim

```Lua
return {
  'alyxshang/guizhong.nvim'
}
```

## USAGE :hammer_and_pick:

To make your own colorscheme, please follow these steps:

- Create a directory named after your colorscheme.
- Inside this folder, create a directory called `colors`.
- Inside the `colors` directory, create a file named `your_theme.lua` where `your_theme` represents the name of your theme.
- Inside this file, write the following code:

```Lua
-- Importing this plugin.
local engine = require("guizhong")

-- Defining the colorscheme's
-- color palette as a Lua
-- table.
local themePalette = {
  bg = "#000000",
  fg = "#d4d4d4",
  fg2 = "#c3c3c3",
  fg3 = "#b2b2b2",
  fg4 = "#a1a1a1",
  bg2 = "#141414",
  bg3 = "#292929",
  bg4 = "#3d3d3d",
  keywordColor = "#d4d4d4",
  builtinColor = "#d4d4d4",
  constColor = "#d4d4d4",
  commentColor = "#808080",
  funcColor = "#d4d4d4",
  strColor = "#d4d4d4",
  typeColor = "#d4d4d4",
  varColor = "#d4d4d4",
  warningColor = "#ff0000",
  warning2Color = "#ff8800",
  transparent = true
}

-- Setting the colorscheme's
-- global name.
vim.g.colors_name = "your_theme"

-- Listening for colorscheme
-- changes.
vim.api.nvim_create_autocmd(
  "ColorScheme",
  {
    pattern = "your_theme",
    callback = function()
      engine.setHighlights(themePalette)
    end
  }
)
```

- The first line imports this plugin.
- The table called `themePalette` contains the Lua table with the colors of your colorscheme. Each item in this table has to have the key name outlined here.
- `vim.g.colors_name = "your_theme"` lets Neovim know the name of the colorscheme. A global option is set. `your_theme` represents the name of your theme.
- In the next few lines, a Neovim autocommand is set to listen for the changing of the global colorscheme. If the colorscheme name is set with the command `vim.cmd.colorscheme("your_theme")`, the function inside the `callback` parameter will be triggered.
- Inside the `callback` closure the `setHighlights` function is called and applies the colors outlined in the `themePalette` table to different UI elements.
- Save and quit this file.
- You just created your first Neovim colorscheme!

## CONTRIBUTING :black_nib:

To contribute, please follow these steps:

- Fork this repository.
- Add a module for the plugin you want to support in the `lua/guizhong` directory.
- Import the module inside the file `lua/guizhong/setter.lua` and include the call inside the `setHighlights` function with the supplied palette as an argument.
- Test your change with an existing colorscheme or your own.
- Commit and push your change.
- Add your plugin to the `Supported Plugins` section.
- File a pull request.

## SUPPORTED PLUGINS :package:

- [noice.nvim](https://github.com/folke/noice.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)

## MADE WITH ***GUIZHONG.NVIM*** :hammer_and_pick:

- [eternity.nvim](https://github.com/alyxshang/eternity.nvim): A Neovim colorscheme inspired by the Raiden Shogun, the Archon of Inazuma.
- [sakuramaiden.nvim](https://github.com/alyxshang/sakuramaiden.nvim): A Neovim colorscheme inspired by Yae Miko, the Guuji of the Grand Narukami Shrine.
- [jadewisdom.nvim](https://github.com/alyxshang/jadewisdom.nvim): A Neovim colorscheme inspired by Ningguang, the Tianquan of the Liyue Qixing.

## CHANGELOG :black_nib:

### Version 0.1.0

- Initial release.
- Upload to GitHub.

### Version 0.2.0

- Support for a transparency setting.
- [ ] Unit tests.

## NOTE :scroll:

- *Guizhong.nvim :nail_care: :woman_technologist:* by *Alyx Shang :black_heart:*.
- Licensed under the [FSL v1](https://github.com/alyxshang/fair-software-license).
