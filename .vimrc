" Plugins
call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
Plug 'ervandew/supertab'
Plug 'junegunn/vim-easy-align'
Plug 'itchyny/lightline.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/matchit.zip'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf'
Plug 'mattn/emmet-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-surround'
Plug 'dag/vim-fish'
Plug 'dylanaraps/wal.vim'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-fugitive'
call plug#end()

" Basics
filetype plugin indent on
set gdefault
set suffixesadd=.js,.ts
set lcs=eol:~,nbsp:>,tab:<<,trail:-
set backspace=indent,eol,start
set nobackup
set nomore
set nocompatible
set nowrap
set hi=1000
set updatetime=200
set fcs=vert:\│,fold:\ 
set noswapfile
set smartindent
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set cwh=20
set cmdheight=2
syntax enable
set background=dark
set shortmess=atToI
set complete-=i
set laststatus=2
set scrolloff=3
set sidescrolloff=5
set display+=lastline
set relativenumber
set nu
set ic
set incsearch
set autoread
set linebreak
set list
set ruler
set autochdir
set ai
set showcmd
set wildmenu
set wildignorecase
set timeoutlen=700 ttimeoutlen=0

colorscheme wal
highlight VertSplit cterm=NONE guibg=NONE
highlight NonText ctermfg=magenta
highlight lineNr ctermfg=darkgray
highlight CursorLineNr ctermfg=red
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeQuitOnOpen = 1
let mapleader=","
let g:syntastic_typescript_checkers = [ 'tsc', 'tslint' ]
let g:syntastic_check_on_open = 0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:syntastic_mode_map = { 'mode': 'passive' }
set signcolumn=yes

" Hic sunt dracones
nmap <TAB> gt
nmap <S-TAB> gT
nnoremap __ :help 
nnoremap -n :exec ToggleNumbers()<CR>
nnoremap -t :retab<CR>
nnoremap -f :exec ToggleFolding()<CR>
nnoremap -w :help <C-r><C-w><CR>
nnoremap -s :vimgrep /<C-r><C-w>/g **/*<CR>
nnoremap gh "+P
nnoremap hg "+y
nnoremap <space>e :e #<CR>
nnoremap <space>n :cn<CR>
nnoremap <space>p :cp<CR>
nnoremap <space>f :copen<CR>
nnoremap <space>s :%s/
nnoremap <F1> @g<CR>
nnoremap <F2> @p<CR>
nnoremap <leader><F2> :exec UpdateBranch()<CR>
nnoremap <leader>0 :exec ToggleSpeedMode()<CR>
nnoremap -a :exec ToggleAim()<CR>
nnoremap <leader>1 :r ! 
nnoremap <F2><F2>  :Gmerge --no-ff --no-edit 
nnoremap <F3> :Gstatus<CR>
nnoremap <F4> :bot term<CR>
tnoremap <F4> <C-w>NZQ
nnoremap <leader><F4> :qa<CR>
nnoremap <F5> :w<CR>
nnoremap <F6> :wq<CR>
nnoremap <F7> :e!<CR>
nnoremap <F8> :CtrlP<CR>
nnoremap <F9> :FZF<CR>
nnoremap <F11> @c
nnoremap + <C-a>
nnoremap - <C-x>
nnoremap <space>d <C-d>
nnoremap <space>u <C-u>
nnoremap <leader>/ :set hlsearch!<CR>
nnoremap <leader>t :%s///g<Left><Left>
nnoremap <leader>k K

nnoremap yp Yp
nnoremap dp ddkP

" - lazy maps
nnoremap zx ZQ

" - operator pending maps
onoremap x iW
onoremap z aW
onoremap \ i<
onoremap q i'
onoremap <space>q i"
onoremap <leader>c a{
onoremap c i{
onoremap v i[
onoremap p i(
onoremap ç <esc>

onoremap <space>c a{
onoremap <space>v a[
onoremap <space>p a(

nnoremap <leader>p :prev<CR>
nnoremap <leader>n :next<CR>
nnoremap ; :
nnoremap : ;

vnoremap <C-c> "*y :let @+=@*<CR>
vnoremap ; :
vnoremap : ;
vnoremap gh "+p
vnoremap hg "+y

cnoremap ... cd ../../<CR>
cnoremap mks mksession! ~/.vim.current<CR>
cnoremap vex Vexplore<CR>
cnoremap <leader>. w !sudo tee %<CR>
cnoremap kk <C-f>
cnoremap çç <Esc>
cnoremap 11 !
cnoremap 55 %
cnoremap 22 @
cnoremap 33 #
cnoremap 00 _
cnoremap pp <C-r>"
cnoremap qq q!<CR>
cnoremap gp Git push origin
cnoremap gpm Git push origin master<CR>
cnoremap gco Git checkout 
cnoremap glo Git log --stat<CR><CR>
cnoremap grhh Git reset --hard HEAD<CR>
cnoremap -- <C-R>=expand("%:p:h")<CR>
cnoremap sg s///g<C-LEFT><Right><Right>
cnoremap jk <Right>
cnoremap kj <Left>
cnoremap kk <C-f>
cnoremap kl <End>
cnoremap jj <Home>

nnoremap <backspace> :shell<CR>
nnoremap <space>v :vsplit<CR>
nnoremap <space>h :split<CR>
nnoremap <c-t> :Texplore<CR>
nnoremap <space>g :Gst<CR>
nnoremap <space>q :q<CR>
nnoremap <space>t :tabe<CR>
nnoremap <space>w <C-w>
nnoremap <space>r :so ~/.vimrc<CR>:e<CR>

nnoremap <Left> <C-W><Left>
nnoremap <Right> <C-W><Right>
nnoremap <Up> <C-W><Up>
nnoremap <Down> <C-W><Down>

inoremap xx <C-x>
inoremap <F1> <C-o>
inoremap <F5> <ESC>:w<CR>i
inoremap <F6> <ESC>:wq<CR>
inoremap zz \|
inoremap 99 ()<Left>
inoremap 88 {}<Left>
inoremap {<CR> {<CR><CR>}<Esc>kI<tab>
inoremap (<CR> (<CR><CR>)<Esc>kI<tab>
inoremap [<CR> [<CR><CR>]<Esc>kI<tab>
inoremap 00 _
inoremap 55 %
inoremap 44 $
inoremap 22 @
inoremap 33 #
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
inoremap =. =>
inoremap -. ->
inoremap ;; ::
inoremap çç <ESC>
inoremap kk <ESC>A
inoremap kj <Left>
inoremap jk <Right>
inoremap jj <ESC>I
inoremap nn <C-n>
inoremap pp <C-p>
inoremap yy <C-y>
inoremap hh <C-x><C-l>
inoremap vv <C-x><C-v>
inoremap ff <C-x><C-f>
inoremap çs <ESC>:w<CR>
inoremap çq <ESC>:wq<CR>
nnoremap <C-e> :mksession! ~/.vim.current<CR>
nnoremap <F10> :NERDTreeToggle<CR>
nnoremap <space><F10> :NERDTreeFind<CR>
nnoremap <leader><F10> :NERDTreeClose<CR>
nnoremap <leader>fj :%!python -m json.tool<CR>
nnoremap <leader>v :vsplit ~/.vimrc<CR>
nnoremap <leader>; @:
nnoremap <leader><space> @@
nnoremap <leader>. :w<CR>
nnoremap <leader>l <S-v>
nnoremap <space><space> :w<CR>

let g:user_emmet_leader_key=','
let NERDTreeMapActivateNode='l'
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

nnoremap <C-c> "+yy

"EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:EditorConfig_exec_path = '/usr/bin/editorconfig'

" The Silver Searcher
if executable('ag')
  set grepprg=ag\ --nogroup
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

set dir=$HOME/.vim_tmp/swap
if !isdirectory(&dir) | call mkdir(&dir, 'p', 0700) | endif
set encoding=utf-8

" Abbreviations
iab shrug ¯\_(ツ)_/¯<delete>
cabbrev tdcore ~/Projects/Revelare/troca-digital-core/
cabbrev tdpainel ~/Projects/Revelare/troca-digital-painel/
cabbrev tdportal ~/Projects/Revelare/troca-digital-portal/
cabbrev tdapp ~/Projects/Revelare/troca-digital-aplicativo/

" Macros
let @y='ORWyEq'
let @p='@y;Git pull origin pp'
let @g='@y;Git push origin pp'
let @c='@yOR/unst-ccpa | '

function! UpdateBranch()
    Git fetch --all
    Git pull origin develop
endfunction

function! ToggleSpeedMode()
    :set nu! lz! relativenumber! ruler!
    :if exists("g:syntax_on") | syntax off | else | syntax enable | endif
    :e
endfunction

function! ToggleAim()
    :set cursorcolumn! cursorline!
endfunction

function! ToggleNumbers()
    :set nu! relativenumber!
endfunction

function! ToggleFolding()
    :if &foldcolumn ==# 0 | set foldcolumn=1 foldmethod=indent | else | set foldcolumn=0 foldmethod=manual | endif
endfunction
source ~/.lightline.vimrc
