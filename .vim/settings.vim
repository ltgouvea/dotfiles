filetype plugin indent on
set hidden
set gdefault
set nohlsearch
set suffixesadd=.js,.ts
set lcs=nbsp:>,tab:<<,trail:-
set backspace=indent,eol,start
set nobackup
set nomore
set nowrap
set guicursor=
set history=1000
set updatetime=200
set fcs=vert:\│,fold:\ 
set noswapfile
set smarttab
set expandtab
set cwh=20
set cmdheight=2
syntax enable
set background=dark
colorscheme wal
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

highlight VertSplit cterm=none guibg=NONE
highlight NonText ctermfg=grey
highlight lineNr ctermfg=darkgray
highlight CursorLineNr ctermfg=red
highlight CocHighlightText ctermbg=grey

let NERDTreeAutoDeleteBuffer = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeChDirMode  = 2
let mapleader=","
let g:syntastic_typescript_checkers = [ 'tsc', 'tslint' ]
let g:syntastic_check_on_open = 0
let g:syntastic_mode_map = { 'mode': 'passive' }
set signcolumn=yes
let g:user_emmet_leader_key=','
let NERDTreeMapActivateNode='l'
let g:UltiSnipsExpandTrigger       = "`"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:EditorConfig_exec_path = '/usr/bin/editorconfig'

set dir=$HOME/.vim_tmp/swap
if !isdirectory(&dir) | call mkdir(&dir, 'p', 0700) | endif
set encoding=utf-8

autocmd! VimEnter,ColorScheme * hi VertSplit ctermbg=none ctermfg=white
autocmd! BufWritePost config.h,config.def.h !sudo make install
autocmd! BufWritePost plugins.vim so % | PlugInstall | PlugUpdate
autocmd! BufWritePost settings.vim,macros.vim,functions.vim,mappings.vim so %
