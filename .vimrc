" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on
 
" Enable syntax highlighting
syntax on

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Make tabs as wide as two spaces
set tabstop=2

" Always use spaces instead of tab characters
set expandtab

" Size of an 'indent'
set shiftwidth=2

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Display line numbers on the left
set number

" Enable relative numbering from current position
set rnu

" Always display status line
set laststatus=2

" Do not show mode because lightline plugin will handle this
set noshowmode

" Load plugins
so ~/.vim/plugins.vim

" Use fzf instead of default find
set rtp+=/usr/local/opt/fzf

" Highlight current line
set cursorline

" '\nt' shortcut to toggle rather than typing :NERDTree everytime
nmap <leader>nt :NERDTreeToggle<cr>

" Config for lightline plugin
if !has('gui_running')
  set t_Co=256
endif

" Change cursor style when entering INSERT mode (works in tmux!)
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" The default of 31 is just a little too narrow
let g:NERDTreeWinSize=40

let g:ale_fixers = {
       \ 'javascript': ['prettier'],
       \ 'css': ['prettier'],
       \ }

let g:ale_linters = {
       \ 'javascript': ['eslint'],
       \ }

let g:ale_linters_explicit = 1
"let g:ale_fix_on_save = 1
