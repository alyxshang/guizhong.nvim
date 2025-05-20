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

Any of these plugins can be specified as optional dependencies for ***Guizhong.nvim***.

- [noice.nvim](https://github.com/folke/noice.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)

## MADE WITH ***GUIZHONG.NVIM*** :hammer_and_pick:

### [ETERNITY.NVIM](https://github.com/alyxshang/eternity.nvim)

A Neovim colorscheme inspired by the Raiden Shogun, the Archon of Inazuma.

<p align="center">
 <img src="https://github.com/alyxshang/eternity.nvim/blob/main/images/screenie.png"/>
</p>


### [SAKURAMAIDEN.NVIM](https://github.com/alyxshang/sakuramaiden.nvim)

A Neovim colorscheme inspired by Yae Miko, the Guuji of the Grand Narukami Shrine.

<p align="center">
 <img src="https://github.com/alyxshang/sakuramaiden.nvim/blob/main/images/screenie.png"/>
</p>

### [JADEWISDOM.NVIM](https://github.com/alyxshang/jadewisdom.nvim)

A Neovim colorscheme inspired by Ningguang, the Tianquan of the Liyue Qixing.

<p align="center">
 <img src="https://github.com/alyxshang/jadewisdom.nvim/blob/main/images/screenie.png"/>
</p>

### [EMERALDSPARROW.NVIM](https://github.com/alyxshang/emeraldsparrow.nvim)

A Neovim colorscheme inspired by Ms. Lan Yan, a prolific maker of Rattan figures.

<p align="center">
 <img src="https://github.com/alyxshang/emeraldsparrow.nvim/blob/main/images/screenie.png"/>
</p>


### [MENHERA.NVIM](https://github.com/alyxshang/menhera.nvim)

A pastel goth Neovim colorscheme inspired by Menhera Chan.

<p align="center">
 <img src="https://github.com/alyxshang/menhera.nvim/blob/main/images/screenie.png"/>
</p>

## CHANGELOG :black_nib:

### Version 0.1.0

- Initial release.
- Upload to GitHub.

### Version 0.2.0

- Support for a transparency setting.
- Support for conditionally setting highlight groups based on plugins installed.

## NOTE :scroll:

- *Guizhong.nvim :nail_care: :woman_technologist:* by *Alyx Shang :black_heart:*.
- Licensed under the [FSL v1](https://github.com/alyxshang/fair-software-license).
