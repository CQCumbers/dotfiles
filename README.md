# CQCumber's dotfiles
For personal use on macos; based on zsh, tmux, and vim

### Features
- uses gnu stow to manage dotfiles
- Prezto for zsh customization
- vim colorscheme from https://github.com/noahfrederick/vim-noctu 
- ncl highlighting from https://www.ncl.ucar.edu/Applications/Files/ncl3.vim
- vim-plug for vim plugin loading

### Install steps
- Install gnu stow
- Install prezto, but do not copy bundled config files
- clone this repo, and `stow zsh` to symlink zsh dotfiles
- `stow vim` for vim & tmux dotfiles; stow others as necessary
- on mac, use included custom color scheme materialshell-ocean and Input Mono font
- reinstall vim plugins by running :PlugClean, then :PlugUpdate

