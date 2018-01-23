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
call plug#end()

filetype plugin on
set nobackup
set noswapfile
set smartindent
set cwh=20
set cmdheight=2
set shortmess=at
set nu
set relativenumber
set ic
set incsearch
set hlsearch
set autoread
set linebreak
set ruler
set autochdir
set showcmd
set wildmenu
set wildignorecase
set foldmethod=indent
set mouse=a
set timeoutlen=1000 ttimeoutlen=0

colorscheme wal
highlight Normal ctermbg=none
highlight NonText ctermbg=none 
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline_theme='wal'
let g:syntastic_enable_highlighting = 1
let mapleader=","
set signcolumn=yes
nmap <TAB> gt
nmap <S-TAB> gT
nnoremap _a :exec InitArteris()<CR>
nnoremap __ :help 
nnoremap _w :help <C-r><C-w><CR>
nnoremap _s :vimgrep /<C-r><C-w>/g **/*<CR>
nnoremap <space>n :cn<CR>
nnoremap <space>p :cp<CR>
nnoremap <space>f :copen<CR>
nnoremap <F1> @g<CR>
nnoremap <F2> @p<CR>
nnoremap <leader><F2> :exec UpdateBranch();
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
nnoremap <leader>/ :noh<CR>
nnoremap <leader>t :tabe<CR>
nnoremap <leader>k K

" Selection shortcuts
" - inside motions
nnoremap <leader>ic vi{
nnoremap <leader>ip vi(
nnoremap <leader>iv vi[
nnoremap <leader>it vit

" - around motions
nnoremap <space>aa ggvG
nnoremap <space>ac va{
nnoremap <space>ap va(
nnoremap <space>av va[
nnoremap <space>at vat

" Deletion shortcuts
" - inside motions
nnoremap <leader>dc di{
nnoremap <leader>dp di(
nnoremap <leader>dv di[
nnoremap <leader>dt dit
"
" - around motions
nnoremap <leader>dcc da{
nnoremap <leader>dpp da(
nnoremap <leader>dvv da[
nnoremap <leader>dtt dat

" Paste shortcuts
" - inside motions
nnoremap yp Yp
nnoremap <leader>yc yi{
nnoremap <leader>yp yi(
nnoremap <leader>yv yi[
nnoremap <leader>yt yit

" - around motions
nnoremap <leader>ycc ya{
nnoremap <leader>ypp ya(
nnoremap <leader>yvv ya[
nnoremap <leader>ytt yat

" Indentation shortcuts
" - inside motions
nnoremap <leader>fc =i{
nnoremap <leader>fp =i(
nnoremap <leader>fv =i[
nnoremap <leader>ft =it

" - around motions
nnoremap <leader>fcc =a{
nnoremap <leader>fpp =a(
nnoremap <leader>fvv =a[
nnoremap <leader>ftt =at

" - lazy maps
nnoremap <leader>8 *

" - operator pending maps
onoremap z a<
onoremap \ i<
onoremap q ip
onoremap c i{
onoremap v i[
onoremap p i(
onoremap <leader>f F
onoremap <leader>t T
onoremap <leader>w W
onoremap <leader>e E
onoremap <leader>b B
onoremap <leader>b B
onoremap ç <esc>

onoremap <space>q ap
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

nnoremap ç ~
vnoremap ç ~

nnoremap <leader>qq viw<esc>a'<esc>bi'<esc>lel
nnoremap <leader>qd viw<esc>a"<esc>bi"<esc>lel
vnoremap <leader>qq iw<esc>a'<esc>bi'<esc>lel
vnoremap <leader>qd iw<esc>a"<esc>bi"<esc>lel
vnoremap <leader>4 $

vnoremap <leader>q ap
vnoremap <leader>p i(
vnoremap <leader><leader>p a(
vnoremap <leader>c i{
vnoremap <leader><leader>c a{
vnoremap <leader>v i[
vnoremap <leader><leader>v a[
vnoremap zz i<
vnoremap z a<
vnoremap <leader>f F
vnoremap <leader>t T

cnoremap <leader>. w !sudo tee %
cnoremap 11 !
cnoremap 55 %
cnoremap 22 @
cnoremap 33 #
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

nnoremap ; :
nnoremap <backspace> :shell<CR>
nnoremap <space>v :vsplit<CR>
nnoremap <space>h :split<CR>
nnoremap <space>g :Gst<CR>
nnoremap <space>q :q<CR>
nnoremap <space>wq :wq<CR>
nnoremap <space>ww <C-w>r
nnoremap <space>r :so ~/.vimrc<CR>
nnoremap <space>o :options<CR>

nnoremap <Left> <C-W><Left>
nnoremap <Right> <C-W><Right>
nnoremap <Up> <C-W><Up>
nnoremap <Down> <C-W><Down>

inoremap <F1> <C-o>
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
inoremap =. =>
inoremap -. ->
inoremap ,, <
inoremap .. >
inoremap ;; ::
inoremap çç <ESC>
inoremap ll <ESC>A
inoremap jj <Left>
inoremap kk <Right>
inoremap hh <ESC>I
inoremap nn <C-n>
inoremap ff <C-x><C-f>
inoremap çs <ESC>:w<CR>
inoremap çq <ESC>:wq<CR>
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<left>
inoremap ' ''<left>
inoremap " ""<left>
nnoremap <F10> :NERDTreeFind<CR>
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
iab shrug ¯\_\|ツ\|_/¯ 

" MARCOS kkk
let @y='OR/branchwyWq'
let @p='@y;Git pull origin pp'
let @g='@y;Git push origin pp'
let @c='OR/branchwyW^zj-ccpa zz '
let @z='OR/branchwyW^zj--ccpa zz '

function! UpdateBranch() 
	Git checkout develop
	Git fetch --all
	Git pull origin develop
	Git checkout -
	Git merge --no-ff --no-edit -
endfunction

function! InitArteris()
	cd ~/HD/var/www/api-arteris/htdocs/
	NERDTreeToggle
	tabe
	cd ~/HD/var/www/sig-arteris/htdocs/
	NERDTreeToggle
endfunction
