# CQCumber's Dotfiles
> zsh/tmux/vim based config files for macos

This repository contains CQCumbers's personal dotfiles.

## Features
- gnu stow for version control
- Prezto for zsh customization
- vim colorscheme from [vim-noctu](https://github.com/noahfrederick/vim-noctu)
- ncl highlighting from [official sample](https://www.ncl.ucar.edu/Applications/Files/ncl3.vim)
- vim-plug for vim plugin loading

## Installation
1. Install gnu stow
1. Install [prezto](https://github.com/sorin-ionescu/prezto), but do not copy bundled config files
1. clone this repo, and `stow zsh` to symlink zsh dotfiles
1. `stow vim` for vim & tmux dotfiles; stow others as necessary
1. Configure terminal to use the [materialshell-ocean](https://github.com/carloscuesta/materialshell) color scheme and [Input Mono](http://input.fontbureau.com/) font
1. reinstall vim plugins by running :PlugClean, then :PlugUpdate
