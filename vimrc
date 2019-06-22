call plug#begin()
	Plug 'jiangmiao/auto-pairs'
	Plug 'fatih/vim-go'
	Plug 'Yggdroot/indentLine'
	Plug 'scrooloose/nerdtree'
	Plug 'majutsushi/tagbar'
	Plug 'vim-airline/vim-airline'
	Plug 'tomasiser/vim-code-dark'
call plug#end()
" Enable filetype plugins 
filetype plugin on
filetype indent on

" Enable syntax highlight
syntax on

" Show line numbers
set number

" Set color theme
colorscheme codedark

" Set cursor horizontal line
set cursorline

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
map <F8> :TagbarToggle<CR>

" ########################
" INDENTLINE Plugin
" ########################
let g:indentLine_char = '¦'

" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

if has('gui_running')
  "set guifont=Monaco:h10 noanti
  set guioptions-=T
  set guioptions-=e
  set guioptions-=r
  set guioptions-=L
  set t_Co=256
  set guitablabel=%M\ %t
endif

let g:go_highlight_structs = 1 
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
