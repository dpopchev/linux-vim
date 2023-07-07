# linux-vim

Configuration to distribute for `vim/neovim`.

## Quickstart

```
git clone git@github.com:dpopchev/linux-vim.git
cd linux-vim
make install
```

Advanced features are provided using [packer](https://github.com/wbthomason/packer.nvim)

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim ~/.config/nvim/lua/plugins.lua
# :so
# :PackerInstall
```
