set nocompatible

filetype on
filetype plugin on
filetype indent on

syntax on
syntax sync fromstart

set guifont=Pragmata:h15
" set guifont=Bitstream\ Vera\ Sans\ Mono:h13

"" indentation
set ts=2 sw=2 sts=2 et

set autowriteall
set noai nocindent
set hlsearch
set laststatus=0
set writebackup
set backup backupdir=$HOME/.vim/backup
set directory=/tmp
set ttyfast
set number ruler
set backspace=2     " allow backspacing over everything in insert mode

"" Suffixes that get lower priority when doing tab completion for filenames.
"" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.class,.jar

set showcmd
set showmatch
set fileformats=unix,dos,mac

set viminfo=!,'50,\"1000,:150,n~/.vim/viminfo
set fileformat=unix history=50
" set digraph

"" Bash out extra whitespace
highlight CursorLine guibg=Gray20
highlight ExtraWhitespace ctermfg=15 ctermbg=4 guifg=#CF6A4C guibg=#420E09
match ExtraWhitespace /\s\+$\| \+\ze\t/
 
" set lines=55
" set columns=100
 
":au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

:colorscheme darkdevel

if has("gui_macvim")
  :colorscheme railscasts

  " side scrolling from :h wrap
  set sidescroll=5
  set listchars+=precedes:<,extends:>

  " Shortcut to rapidly toggle `set list`
  nmap <leader>l :set list!<CR>

  " Use the same symbols as TextMate for tabstops and EOLs
  set listchars=tab:▸\ ,eol:¬

  let macvim_skip_cmd_opt_movement = 1
  set fuoptions=maxvert,maxhorz

  " hide toolbar
  set go-=T

  " hide scrollbars
  set go-=r
  set go-=R
  set go-=l
  set go-=L
  set mousefocus
endif

