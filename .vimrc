" Plugins
call plug#begin('~/.vim/plugged')
Plug 'ervandew/supertab'
Plug 'junegunn/vim-easy-align'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/matchit.zip'
Plug 'tpope/vim-commentary'
Plug 'bling/vim-airline'
Plug 'junegunn/fzf'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'powerline/fonts'
Plug 'leafgarland/typescript-vim'
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-surround'
Plug 'xsbeats/vim-blade'
Plug 'dylanaraps/wal.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
Plug 'eslint/eslint'
Plug 'palantir/tslint'
call plug#end()

" Basics
filetype plugin on
set lcs=eol:~,tab:>-,trail:-
set backspace=indent,eol,start
set nobackup
set nomore
set nowrap
set hi=1000
set updatetime=100
set fcs=vert:\│,fold:\ 
set noswapfile
set smartindent
set cwh=20
set cmdheight=2
syntax enable
set background=dark
set shortmess=atTo
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
set ruler
set autochdir
set ai
set showcmd
set wildmenu
set wildignorecase
set mouse=a
set timeoutlen=700 ttimeoutlen=0

" Frescurite
colorscheme wal
highlight VertSplit cterm=NONE guibg=NONE
highlight NonText ctermfg=magenta
let g:airline_powerline_fonts = 1
let g:syntastic_typescript_checkers = ['tslint']
let g:airline_section_error=0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline_theme='wal'
let g:syntastic_enable_highlighting = 1
let mapleader=","
set signcolumn=yes

"
let g:multi_cursor_select_all_word_key = '<C-a>'
let g:multi_cursor_skip_key            = '<C-d>'

" Hic sunt dracones
nmap <TAB> gt
nmap <S-TAB> gT
nnoremap __ :help 
nnoremap -n :exec ToggleNumbers()<CR>
nnoremap -f :exec ToggleFolding()<CR>
nnoremap -w :help <C-r><C-w><CR>
nnoremap -s :vimgrep /<C-r><C-w>/g **/*<CR>
nnoremap gh "+p
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
nnoremap <leader>1 :read ! 
nnoremap <F2><F2>  :Gmerge --no-ff --no-edit 
nnoremap <F3> :Gst<CR>
nnoremap <F4> :q<CR>
nnoremap <leader><F4> :qa<CR>
nnoremap <F5> :w<CR>
nnoremap <F6> :wq<CR>
nnoremap <F7> :e!<CR>
nnoremap <F8> :CtrlP<CR>
nnoremap <F9> :FZF<CR>
nnoremap <F11> @c
nnoremap <F12> @z
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
onoremap c i{
onoremap <leader>c a{
onoremap v i[
onoremap p i(
onoremap <leader>f F
onoremap <leader>t T
onoremap <leader>w W
onoremap <leader>e E
onoremap <leader>b B
onoremap <leader>b B
onoremap ç <esc>

onoremap <space>c a{
onoremap <space>v a[
onoremap <space>p a(

nnoremap <leader>a A
nnoremap <leader>b B
nnoremap <leader>c C
nnoremap <leader>i I
nnoremap <leader>y Y
nnoremap <leader>d D
nnoremap <leader>g G
nnoremap <leader>s S
nnoremap <leader>w W
nnoremap <leader>e E
nnoremap <leader>p P
nnoremap <leader>o O
nnoremap <leader>r R
nnoremap <leader>h ^
nnoremap <leader>x :e!<CR>
nnoremap <leader>qq viw<esc>a'<esc>bi'<esc>lel
nnoremap <leader>qd viw<esc>a"<esc>bi"<esc>lel
nnoremap ; :
nnoremap : ;

vnoremap ç :
vnoremap <leader>qq iw<esc>a'<esc>bi'<esc>lel
vnoremap <leader>qd iw<esc>a"<esc>bi"<esc>lel
vnoremap <leader>4 $
vnoremap s :s//<Left>
vnoremap <leader>q ap
vnoremap <leader>p i(
vnoremap <leader><leader>p a(
vnoremap <leader>c i{
vnoremap <leader><leader>c a{
vnoremap <leader>v i[
vnoremap <leader><leader>v a[
vnoremap zz i<
vnoremap gh "+p
vnoremap hg "+y
vnoremap z a<
vnoremap <leader>f F
vnoremap <leader>t T

cnoremap ... cd ../../<CR>
cnoremap mks mksession! ~/vim.current<CR>
cnoremap vex Vexplore<CR>
cnoremap <leader>. w !sudo tee %
cnoremap kk <C-f>
cnoremap çç <Esc>
cnoremap 11 !
cnoremap 55 %
cnoremap 22 @
cnoremap 33 #
cnoremap 00 _
cnoremap pp <C-r>"
cnoremap qq q!<CR>
cnoremap <leader>v tabe ~/.vimrc<CR>
cnoremap gp Git push origin
cnoremap gpm Git push origin master<CR>
cnoremap gco Git checkout 
cnoremap glo Git log --stat<CR><CR>
cnoremap grhh Git reset --hard HEAD<CR>
cnoremap gst Gstatus<CR>
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
nnoremap <c-h> :Hexplore<CR>
nnoremap <c-t> :Texplore<CR>
nnoremap <space>g :Gst<CR>
nnoremap <space>q :q<CR>
nnoremap <space>t :tabe<CR>
nnoremap <space>w <C-w>
nnoremap <space>r :so ~/.vimrc<CR>:e<CR>
nnoremap <space>o :options<CR>

nnoremap <Left> <C-W><Left>
nnoremap <Right> <C-W><Right>
nnoremap <Up> <C-W><Up>
nnoremap <Down> <C-W><Down>

inoremap xx <C-x>
inoremap <F1> <C-o>
inoremap d <ESC>dwi
inoremap <F5> <ESC>:w<CR>i
inoremap <F6> <ESC>:wq<CR>
inoremap zz \|
inoremap ç' "
inoremap 99 ()
inoremap 88 {}
inoremap 00 _
inoremap 55 %
inoremap 44 $
inoremap 22 @
inoremap 33 #
iab 22 @
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
inoremap =. =>
inoremap -. ->
inoremap ,, <
inoremap .. >
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
inoremap 99 ()<Left>
inoremap { {}<Left>
inoremap [ []<left>
inoremap ' ''<left>
inoremap " ""<left>
nnoremap <C-e> :mksession! ~/vim.current<CR>
nnoremap <F10> :NERDTreeToggle<CR>
nnoremap <space><F10> :NERDTreeFind<CR>
nnoremap <leader><F10> :NERDTreeClose<CR>
nnoremap <leader>fj :%!python -m json.tool<CR>
nnoremap <leader>v <C-V>
nnoremap <leader>; @:
nnoremap <leader><space> @@
nnoremap <leader>. :w<CR>
nnoremap <leader>l <S-v>
nnoremap <space><space> :w<CR>

" VISUAL MODE RATPACK
vnoremap <leader>aa A
vnoremap <leader>b B
vnoremap <leader>d D
vnoremap <leader>g G
vnoremap <leader>s S
vnoremap <leader>w W
vnoremap <leader>e E
vnoremap <leader>p P
vnoremap <leader>o O
vnoremap <leader>r R
vnoremap <leader>l <S-v>
vnoremap vv <C-v>
vnoremap <space> <esc>
vnoremap ç <esc>
vnoremap ; :

let g:user_emmet_leader_key='<C-Z>'
let NERDTreeMapActivateNode='l'
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

"EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"EasyAlign
command! Sw :w !sudo tee %
command! Gst :Gstatus
command! E :e!

" pra não quebrar o youcompletemE
let g:ycm_server_python_interpreter='/usr/bin/python'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion   = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType    = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" The Silver Searcher
if executable('ag')
  set grepprg=ag\ --nogroup
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

set dir=$HOME/.vim_tmp/swap
if !isdirectory(&dir) | call mkdir(&dir, 'p', 0700) | endif
set encoding=utf-8

" abbreviations
iab shrug ¯\_(ツ)_/¯<delete>

" MARCOS kkk
let @y='OR/branchwyWq'
let @p='@y;Git pull origin pp'
let @g='@y;Git push origin pp'
let @c='OR/branchwyW^zj-ccpa zz '
let @z='OR/branchwyW^zj--ccpa zz '

function! UpdateBranch()
	Git fetch --all
	Git pull origin develop
endfunction

function! RemoveSqlQuotes()
	:silent %s/^"//
	:silent %s/"$//
endfunction

function! Snake()
	:silent s/\ /_/g
	:silent s/-/_/g
	:silent s/_\+/-/g
	:silent s/-/_/g
	:normal guu
endfunction

function! ToggleSpeedMode()
	:set nu! lz! relativenumber! ruler!
	:AirlineToggle
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
