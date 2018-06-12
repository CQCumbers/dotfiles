# CQCumber's dotfiles
For personal use on macos, uses zsh/tmux/vim

### Features
- uses gnu stow to manage dotfiles
- Prezto for zsh customization
- vim colorscheme from [vim-noctu](https://github.com/noahfrederick/vim-noctu)
- ncl highlighting from [official sample](https://www.ncl.ucar.edu/Applications/Files/ncl3.vim)
- vim-plug for vim plugin loading

### Install steps
- Install gnu stow
- Install [prezto](https://github.com/sorin-ionescu/prezto), but do not copy bundled config files
- clone this repo, and `stow zsh` to symlink zsh dotfiles
- `stow vim` for vim & tmux dotfiles; stow others as necessary
- Configure terminal to use the [materialshell-ocean](https://github.com/carloscuesta/materialshell) color scheme and [Input Mono](http://input.fontbureau.com/) font
- reinstall vim plugins by running :PlugClean, then :PlugUpdate
