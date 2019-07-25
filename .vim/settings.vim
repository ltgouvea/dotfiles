filetype plugin indent on
set nu
set hidden
set gdefault
set nohlsearch
set suffixesadd=.js,.ts
set lcs=eol:~,nbsp:>,tab:<<,trail:-
set backspace=indent,eol,start
set nobackup
set nomore
set nocompatible
set nowrap
set guicursor=
set hi=1000
set updatetime=200
set fcs=vert:\│,fold:\ 
set noswapfile
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set cwh=20
set cmdheight=2
syntax enable
set background=dark
set shortmess=atToIc
set complete-=i
set laststatus=2
set scrolloff=0
set sidescrolloff=5
set display+=lastline
set ic
set incsearch
set autoread
set autochdir
set linebreak
set list
set ruler
set ai
set showcmd
set wildmenu
set wildignorecase
set timeoutlen=700 ttimeoutlen=0

colorscheme wal
highlight VertSplit cterm=none guibg=NONE
highlight NonText ctermfg=grey
highlight lineNr ctermfg=darkgray
highlight CursorLineNr ctermfg=red
highlight CocHighlightText ctermbg=grey
highlight Pmenu ctermbg=darkgray ctermfg=lightgreen
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeQuitOnOpen = 1
let mapleader=","
let g:syntastic_typescript_checkers = [ 'tsc', 'tslint' ]
let g:syntastic_check_on_open = 0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:syntastic_mode_map = { 'mode': 'passive' }
set signcolumn=yes
let g:user_emmet_leader_key=','
let NERDTreeMapActivateNode='l'
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber
let g:UltiSnipsExpandTrigger       = "`"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:EditorConfig_exec_path = '/usr/bin/editorconfig'

if executable('ag')
  set grepprg=ag\ --nogroup
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

set dir=$HOME/.vim_tmp/swap
if !isdirectory(&dir) | call mkdir(&dir, 'p', 0700) | endif
set encoding=utf-8

autocmd! VimEnter,ColorScheme * hi VertSplit ctermbg=none ctermfg=white
