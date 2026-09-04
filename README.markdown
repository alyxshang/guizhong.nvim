# GUIZHONG.NVIM

![Guizhong.nvim CI](https://github.com/alyxshang/guizhong.nvim/actions/workflows/nvim.yml/badge.svg)

***A framework for creating Neovim colorschemes.***

## ABOUT

This repository contains the source code for a Lua plugin for Neovim enabling users to build a beautiful Neovim colorscheme in mere minutes. The project was named after the goddess of invention in Genshin Impact, ***Guizhong*** (归终).

## INSTALLATION

### [Lazy.nvim](https://github.com/folke/lazy.nvim)

```Lua
return {
  'alyxshang/guizhong.nvim'
}
```

### [Nuwa.nvim](https://github.com/alyxshang/nuwa.nvim)

```Lua
nuwa.installPackage(
  "https://github.com",
  "alyxshang",
  "guizhong.nvim"
)
```

## USAGE

To understand how to use ***Guizhong.nvim***, please peruse the source
code of [Gothicana.nvim](https://github.com/alyxshang/gothicana.nvim), a colorscheme created using ***Guizhong.nvim***
and currently in use by me.

## CONTRIBUTING

To contribute, please follow these steps:

- Fork this repository.
- Add a module for the plugin you want to support in the `lua/guizhong` directory.
- Import the module inside the file `lua/guizhong/setter.lua` and include the call inside the `setHighlights` function with the supplied palette as an argument.
- Test your change with an existing colorscheme or your own.
- Commit and push your change.
- Add your plugin to the `Supported Plugins` section.
- File a pull request.

## SUPPORTED PLUGINS

Any of these plugins can be specified as optional dependencies for ***Guizhong.nvim***.

- [noice.nvim](https://github.com/folke/noice.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)

## CHANGELOG

### Version 0.1.0

- Initial release.
- Upload to GitHub.

## NOTE :scroll:

- *Guizhong.nvim* by *Alyx Shang*.
- Licensed under the [FSL v1](https://alyxshang.boo/fair-software-license).
