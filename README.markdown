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

To understand how to use ***Guizhong.nvim***, please peruse any of the colorschemes made with ***Guizhong.nvim***.

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

## NOTE :scroll:

- *Guizhong.nvim :nail_care: :woman_technologist:* by *Alyx Shang :black_heart:*.
- Licensed under the [FSL v1](https://github.com/alyxshang/fair-software-license).
