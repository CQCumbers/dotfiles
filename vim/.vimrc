" plugins with vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
call plug#end()

" syntax highlight
colorscheme noctu
syntax enable  
" filetype specific
au BufRead,BufNewFile *.ncl set filetype=ncl
au! Syntax newlang source $VIM/ncl.vim

" ui options
set number  " add line numbers
set ruler   " show cursor coordinates
set cursorline  " highlight current line
set wildmenu  " visual command autocomplete
set lazyredraw  " redraw only when necessary
set showmatch  " highlight matching parens
set backspace=2 " make backspace work like most other apps

" mouse options
set mouse=a  " mouse support in all modes
set ttymouse=xterm2  " extended mouse mode

" fold behavior
set foldenable
set foldlevelstart=10  " open most folds by default
set foldnestmax=10
" space opens/closes folds
nnoremap <space> za
set foldmethod=indent

" tab behavior
set tabstop=4  " show 4 when viewing
set softtabstop=4  " add 4 when editing
set shiftwidth=4  " add 4 with >>
set expandtab  " convert to spaces
" filetype specific
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype cpp setlocal ts=2 sts=2 sw=2
autocmd Filetype ncl setlocal commentstring=; %s

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" search settings
set incsearch  " search while entering
set hlsearch  " highlight matches
" turn off highlight with \<space>
nnoremap <leader><space> :nohlsearch<CR>

" split navigation with tmux
" see http://www.codeography.com/2013/06/19/navigating-vim-and-tmux-splits
if exists('$TMUX')
  function! TmuxOrSplitSwitch(wincmd, tmuxdir)
    let previous_winnr = winnr()
    silent! execute "wincmd " . a:wincmd
    if previous_winnr == winnr()
      call system("tmux select-pane -" . a:tmuxdir)
      redraw!
    endif
  endfunction

  let previous_title = substitute(system("tmux display-message -p '#{pane_title}'"), '\n', '', '')
  let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
  let &t_te = "\<Esc>]2;". previous_title . "\<Esc>\\" . &t_te

  nnoremap <silent> <C-h> :call TmuxOrSplitSwitch('h', 'L')<cr>
  nnoremap <silent> <C-j> :call TmuxOrSplitSwitch('j', 'D')<cr>
  nnoremap <silent> <C-k> :call TmuxOrSplitSwitch('k', 'U')<cr>
  nnoremap <silent> <C-l> :call TmuxOrSplitSwitch('l', 'R')<cr>
else
  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l
endif

