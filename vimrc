call pathogen#infect()
call pathogen#helptags()

" Enable filetype plugins 
filetype plugin on
filetype indent on

" Enable syntax highlight
syntax on

" Show line numbers
set number

" Set color theme
colorscheme codedark

" Set to auto read when a file is changed from the outside
set autoread

"Always show current position
set ruler

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Add a bit extra margin to the left
set foldcolumn=1

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Rendering
set ttyfast

" #######################
" YouCompleteMe plugin
" #######################
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" #######################
" GO-VIM configurations
" #######################

" goimports will automatically format and also rewrite your import declarations.
let g:go_fmt_command = "goimports"

" #########################
" NERDTree configurations
" #########################

" Remapping the key
map <F2> :NERDTreeToggle<CR>

" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

if has('gui_running')
  set guifont=IBM\ Plex\ Mono\ Medium\ 10
  set guioptions-=T
  set guioptions-=e
  set t_Co=256
  set guitablabel=%M\ %t
endif
